LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY TrafficSigKL IS
GENERIC (size : INTEGER := 127);
	PORT (	clk, reset	: IN STD_LOGIC;	-- Clock, Reset
			timer_en	: IN STD_LOGIC;	-- Timer enable
			outclk	 	: INOUT STD_LOGIC;	-- User clock
			timer_ew 	: INOUT INTEGER RANGE 0 TO size;		-- Timer for East-West signal
			timer_ns 	: INOUT INTEGER RANGE 0 TO size;		-- Timer for North-South signal
			s_out		: INOUT STD_LOGIC_VECTOR(1 DOWNTO 0); 	-- Status
			ns_klim, ew_klim : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);	-- Traffic signal
			seg5, seg4	: OUT STD_LOGIC_VECTOR(0 TO 6);	-- Seven segment for s status
			seg3, seg2	: OUT STD_LOGIC_VECTOR(0 TO 6);	-- Seven segment for East-West timer
			seg1, seg0	: OUT STD_LOGIC_VECTOR(0 TO 6)	-- Seven segment for North-South timer
			);
END TrafficSigKL;


ARCHITECTURE bhv0 OF TrafficSigKL IS

	CONSTANT prd		: INTEGER := 24999999;	-- Control user clock pulses (user clock = system clock * (1/(prd+1))
	CONSTANT y_light	: INTEGER := 3; 		-- Control Yellow time (3 pulses)
	CONSTANT r_light	: INTEGER := 10;		-- Control Green + Yellow time (Green is 7 pulses)
	
	SIGNAL temp		: STD_LOGIC := '0';
	SIGNAL count	: INTEGER := 0;
	SIGNAL timer1	: INTEGER RANGE 0 TO size := r_light;
	SIGNAL timer2	: INTEGER RANGE 0 TO size := 0;
	SIGNAL s		: STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS =>'0');
	SIGNAL ew		: STD_LOGIC_VECTOR(2 DOWNTO 0) := "001";
	SIGNAL ns		: STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
	
	COMPONENT seven_seg1 IS
	PORT (	s		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			seg1	: OUT STD_LOGIC_VECTOR (0 TO 6);
			seg2	: OUT STD_LOGIC_VECTOR (0 TO 6)
			);
	END COMPONENT;
	
	COMPONENT seven_seg2 IS
	GENERIC (size : INTEGER);
	PORT (	t		: IN INTEGER RANGE 0 TO size;
			seg1	: OUT STD_LOGIC_VECTOR (0 TO 6);
			seg2	: OUT STD_LOGIC_VECTOR (0 TO 6)
			);
	END COMPONENT;
	
BEGIN


	PROCESS(clk, reset) -- Clock Divider : user clock
	BEGIN
		IF (reset ='0') THEN
			count <= 0;
		ELSIF(RISING_EDGE(clk)) THEN
			IF(count = prd) THEN -- contolled by "prd"
				count <= 0;
				temp <= not temp;
			ELSE
				count <= count + 1;
			END IF;
		END IF;
	END PROCESS;
	outclk	  <= temp;
	
	
	PROCESS(outclk, reset)	-- Timers : time for green + yellow signal
	BEGIN
		IF(reset = '0') THEN
			timer1 <= r_light;	-- Recycle is controlled by "r_light"
			timer2 <= 0;
		ELSIF(RISING_EDGE(outclk) AND timer_en = '1') THEN
			IF(timer1 > 0) THEN
				IF(timer1 > 1) THEN 
					timer1 <= timer1 - 1;
				ELSE
					timer1 <= timer1 - 1;
					timer2 <= r_light;
				END IF;
			ELSIF(timer2 > 0) THEN
				IF(timer2 > 1) THEN
					timer2 <= timer2 - 1;
				ELSE
					timer2 <= timer2 - 1;
					timer1 <= r_light;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	timer_ew	 <= timer1;  -- Timer for East-West signal
	timer_ns	 <= timer2;  -- Timer for North-South signal
	
	
	PROCESS(outclk, reset) -- Output controller (corresponding to state of "s")
	BEGIN
		IF(reset = '0') THEN
			s	<= (OTHERS =>'0');
			ew <= "001"; 	-- EW GREEN
			ns <= "100"; 	-- NS RED			
		ELSIF(RISING_EDGE(outclk)) THEN
			CASE s IS
				WHEN "00" =>
					IF(timer_ew = y_light + 1) THEN
						s	<= s + 1;
						ew <= ew(1 DOWNTO 0) & ew(2); -- "EW changes to YELLOW", NS remains RED
					END IF;
				WHEN "01" =>
					IF(timer_ew = 1) THEN
						s	<= s + 1;
						ew <= ew(1 DOWNTO 0) & ew(2); -- "EW changes to RED"
						ns <= ns(1 DOWNTO 0) & ns(2); -- "NS changes to GREEN"						
					END IF;
				WHEN "10" =>
					IF(timer_ns = y_light + 1) THEN
						s	<= s + 1;
						ns <= ns(1 DOWNTO 0) & ns(2); -- "NS changes to YELLOW", EW remains RED
					END IF;
				WHEN "11" =>
					IF(timer_ns = 1) THEN
						s	<= s + 1;
						ew <= ew(1 DOWNTO 0) & ew(2); -- "EW changes to GREEN"
						ns <= ns(1 DOWNTO 0) & ns(2); -- "NS changes to RED"						
					END IF;
			END CASE;	
		END IF;
	END PROCESS;
	ew_klim	<= ew;
	ns_klim	<= ns;	
	s_out		<= s;
	
	
	u1 : seven_seg1 PORT MAP(s_out, seg5, seg4); 	-- Seven segment output for s
	u2 : seven_seg2 GENERIC MAP(size) PORT MAP(timer_ew, seg3, seg2); -- Seven segment output for timer
	u3 : seven_seg2 GENERIC MAP(size) PORT MAP(timer_ns, seg1, seg0); -- Seven segment output for timer
	

END bhv0;

--------------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seven_seg1 IS
	PORT (	s		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			seg1	: OUT STD_LOGIC_VECTOR (0 TO 6);
			seg2	: OUT STD_LOGIC_VECTOR (0 TO 6)
			);
END seven_seg1;

ARCHITECTURE bhv1 OF seven_seg1 IS
BEGIN

	PROCESS(s)
	BEGIN
		CASE s IS
			WHEN "00" => seg1 <= "0100100"; --s
							 seg2 <= "0000001";  --0
			WHEN "01" => seg1 <= "0100100"; --s
							 seg2 <= "1001111";  --1
			WHEN "10" => seg1 <= "0100100"; --s
							 seg2 <= "0010010";  --2
			WHEN "11" => seg1 <= "0100100"; --s
							 seg2 <= "0000110";  --3
			WHEN OTHERS => seg1 <= "1111110"; -- --
								seg2 <= "1111110"; -- --
		END CASE;
	END PROCESS;

END bhv1;

--------------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seven_seg2 IS
GENERIC (size : INTEGER);
	PORT (	t		: IN INTEGER RANGE 0 TO size;
			seg1	: OUT STD_LOGIC_VECTOR (0 TO 6);
			seg2	: OUT STD_LOGIC_VECTOR (0 TO 6)
			);
END seven_seg2;

ARCHITECTURE bhv2 OF seven_seg2 IS
	SIGNAL x, x1 : INTEGER RANGE 0 TO size;
	SIGNAL y : INTEGER RANGE 0 TO size;
BEGIN

		x <= t / 10;
		x1 <= x * 10;
		y <= t - x1;
	
	PROCESS(x)
	BEGIN
		CASE x IS
			WHEN 0 => seg1 <= "1111111"; --No lights
			WHEN 1 => seg1 <= "1001111"; --1
			WHEN 2 => seg1 <= "0010010"; --2
			WHEN 3 => seg1 <= "0000110"; --3
			WHEN 4 => seg1 <= "1001100"; --4
			WHEN 5 => seg1 <= "0100100"; --5
			WHEN 6 => seg1 <= "0100000"; --6
			WHEN 7 => seg1 <= "0001111"; --7
			WHEN 8 => seg1 <= "0000000"; --8
			WHEN 9 => seg1 <= "0000100"; --9
			WHEN OTHERS => seg1 <= "1111110"; -- --
		END CASE;
	END PROCESS;

	PROCESS(y)
	BEGIN
		CASE y IS
			WHEN 0 => seg2 <= "0000001"; --0
			WHEN 1 => seg2 <= "1001111"; --1
			WHEN 2 => seg2 <= "0010010"; --2
			WHEN 3 => seg2 <= "0000110"; --3
			WHEN 4 => seg2 <= "1001100"; --4
			WHEN 5 => seg2 <= "0100100"; --5
			WHEN 6 => seg2 <= "0100000"; --6
			WHEN 7 => seg2 <= "0001111"; --7
			WHEN 8 => seg2 <= "0000000"; --8
			WHEN 9 => seg2 <= "0000100"; --9
			WHEN OTHERS => seg2 <= "1111110"; -- --
		END CASE;
	END PROCESS;

END bhv2;