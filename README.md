# Traffic Light Controller
Traffic lights control system at a Junction

User can control the duration of the red light and the yellow light
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
User can make own clock pulses by counting system clock pulses with **`prd`**.
> prd is contant data type, and user can set desired clock pulses by changing values of “prd”
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
