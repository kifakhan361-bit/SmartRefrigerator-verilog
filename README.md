Smart Refrigerator Monitoring & Alert System Using Verilog HDL

Project Overview

This project demonstrates a Smart Refrigerator Monitoring and Alert System using Digital Electronics and Verilog HDL. It generates an alarm when the temperature becomes too high or when the refrigerator door remains open for too long.

Objectives

- Monitor refrigerator door status.
- Detect high temperature.
- Generate an alarm based on digital logic.
- Demonstrate Boolean logic using Verilog HDL.

Logic Equation

Alarm = High Temperature OR (Door Open AND Door Long Open)

Inputs and Output

- "door_open": 1 when the refrigerator door is open.
- "high_temp": 1 when the temperature is too high.
- "door_long": 1 when the door has remained open for too long.
- "alarm": 1 when an alarm condition is detected.

Truth Table

Door Open| High Temp| Door Long Open| Alarm
0| 0| 0| 0
0| 0| 1| 0
0| 1| 0| 1
0| 1| 1| 1
1| 0| 0| 0
1| 0| 1| 1
1| 1| 0| 1
1| 1| 1| 1

Project Files

- "index.html" — Website interface and interactive demonstration.
- "refrigerator.v" — Verilog HDL module.
- "refrigerator_tb.v" — Verilog testbench for simulation.

Tools Used

- HTML, CSS and JavaScript
- Verilog HDL
- Icarus Verilog for simulation
- GitHub Pages for website hosting

How to Run the Simulation

Compile and run the Verilog testbench using Icarus Verilog:

iverilog -o refrigerator_sim refrigerator.v refrigerator_tb.v
vvp refrigerator_sim

Conclusion

This project demonstrates how digital logic can be used to generate alerts for refrigerator door and temperature conditions.
