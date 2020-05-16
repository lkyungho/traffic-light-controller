# Traffic Light Controller
Traffic lights control system at a Junction.

User can control the duration of the green light and the yellow light.
```
* Hardware: Altera DE0-CV board
* Software: VHDL
* Knowledge: Sequential circuits, Counter, Shift register, Clock divider, FSM (Finite State Machine)
```

## 1. Diagram of the System
The control system consists of 3 main modules; **`Clock divider`**, **`Timer`**, and **`Signal controller`**.

![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-structure.jpg "Structure")


## 2. Descriptions of the modules
### (1) Clock Divider
User can make own clock pulses by dividing system clock pulses by desired values.
> _**`prd`** is contant data type, and user can set desired clock pulses by changing values of **`prd`**_.
>
> _User clock frequency = System clock frequency * [1 / 2 x (prd + 1)]_
>
> _User clock frequency is 1 second for this project._
```vhdl
[VHDL code]

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
outclk <= temp;
```
### (2) Timer
Timer counts GREEN and YELLOW signal time, which is 10 for this project, and counts down from 10 to 0.

> _**`r_light`** is contant data type_.
>
> _User can control GREEN + YELLOW signal time by changing a value of **`r_light`**_.
```vhdl
[VHDL code]

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
timer_ew <= timer1;  -- Timer for East-West signal
timer_ns <= timer2;  -- Timer for North-South signal
```
### (3) Signal Controller
Finite state machine (FSM) is used to determine traffic light signal operation.
> _S0 state: East-West GREEN signal and North-South RED signal. (Duration: 7 clocks)_
>
> _S1 state: East-West signal switches to YELLOW signal and North-South remains RED signal. (Duration: 3 clocks)_
>
> _S2 state: East-West signal switches to RED signal and North-South signal changes to GREEN signal. (Duration: 7 clocks)_
>
> _S3 state: East-West remains RED signal and North-South signal switches to YELLOW signal. (Duration: 3 clocks)_
>
> _S0 state: East-West signal changes to GREEN signal and North-South signal switches to RED signal._
>
> _... (The procedure is repeated)_


[State Diagram]

![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-state.jpg "State")
```vhdl
[VHDL code]

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
s_out	<= s;
```


## 3. Result
> _S0 state: East-West signal is GREEN (“001”), and North-South signal is RED (“100”)_
![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-result-s0.jpg "S0 State")


> _S1 state: East-West signal is YELLOW (“010”), and North-South signal is RED (“100”)_
![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-result-s1.jpg "S1 State")


> _S2 state: East-West signal is RED (“100”), and North-South signal is GREEN (“001”)_
![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-result-s2.jpg "S2 State")


> _S3 state: East-West signal is RED (“100”), and North-South signal is YELLOW (“010”)_
![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-result-s3.jpg "S3 State")
