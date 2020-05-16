# Traffic Light Controller
Traffic lights control system at a Junction

User can control the duration of the green light and the yellow light
```
* Hardware: Altera DE0-CV board
* Software: VHDL
* Knowledge: Sequential circuits, Counter, Shift register, Clock divider, FSM (Finite State Machine)
```

## 1. Diagram of the System
The control system consists of 3 main modules; **`Clock divider`**, **`Timer`**, and **`Signal controller`**

![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-structure.jpg "Structure")


## 2. Descriptions of the modules
### (1) Clock Divider
User can make own clock pulses by dividing system clock pulses by desired values.
> **`prd`** is contant data type, and user can set desired clock pulses by changing values of “prd”
>
> User clock frequency = System clock frequency * [1 / 2 x (prd + 1)]
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
Timer counts GREEN and YELLOW signal time, which is 10 for this project, and counts down from 10 to 0

> **`r_light`** is contant data type 
>
> User can control GREEN + YELLOW signal time by changing a value of r_light
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
