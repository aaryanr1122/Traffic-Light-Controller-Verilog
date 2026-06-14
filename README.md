# Traffic Light Controller in Verilog

A traffic light controller implemented using a Finite State Machine (FSM) in Verilog HDL.

## States

| State | Light ON | Duration |
|-------|----------|----------|
| GREEN | Green    | 5 cycles |
| YELLOW| Yellow   | 2 cycles |
| RED   | Red      | 5 cycles |

## Features

- FSM-based design
- Asynchronous reset
- Clock-driven state transitions
- Verilog testbench
- Simulation using Icarus Verilog

## State Sequence

GREEN → YELLOW → RED → GREEN → ...

## Screenshots

### FSM Design

![FSM Design](fsm_design1.png)
![FSM Design](fsm_design.png)

### Simulation Output

![Simulation Output](simulation_output1.png)

## Tools Used

- Verilog HDL
- Icarus Verilog
- VS Code

## Files

- traffic_light.v : Traffic light FSM
- traffic_light_tb.v : Testbench

## Author

Aaryan
