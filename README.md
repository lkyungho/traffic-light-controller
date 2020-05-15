# Traffic Light Controller
Traffic Light Controller at a Junction
```
* Hardware: Altera DE0-CV board
* Software: VHDL
* Knowledge: Sequential circuits, Counter, Shift register, Clock divider, FSM (Finite State Machine)
```

## 1. Schematic of the System
The control system consists of 3 main modules; **`Clock divider`**, **`Timer`**, and **`Signal controller`**.

![alt text](https://github.com/lkyungho/Images/blob/master/traffic-light-controller-structure.jpg "Structure")


## 2. Descriptions of the moudles
### (1) Clock Divider
User can make own clock pulses by counting system clock pulses.
```
(VHDL code)
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
