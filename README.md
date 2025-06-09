# Verilog Practice

This repository contains beginner-level Verilog HDL programs for practicing digital design concepts.

## 🔧 What’s Included

- Half Adder
- Full Adder
- 4-bit Ripple Carry Adder
- 2:1 Multiplexer
- 4:1 Multiplexer
- D Flip-Flop
- T Flip-Flop
- 4-bit Counter
- Simple Testbenches for simulation

## 📚 Getting Started

You can run these programs using tools like:

- [EDA Playground](https://www.edaplayground.com/)
- [Icarus Verilog](http://iverilog.icarus.com/)
- [ModelSim](https://eda.sw.siemens.com/en-US/ic/modelsim/)

## 📂 Folder Structure
📁 verilog-practice/
├── and_gate.v
├── or_gate.v
├── mux2to1.v
├── d_ff.v
├── t_ff.v
├── ripple_adder.v
├── README.md

## 🔧 How to Run the Code

You can run these Verilog files using the following tools:

### 🔹 Using [EDA Playground](https://www.edaplayground.com/)
- Visit the site
- Paste your module and testbench code
- Select the simulator (e.g., Icarus Verilog or ModelSim)
- Click "Run"

### 🔹 Using Icarus Verilog locally

bash
iverilog and_gate.v and_gate_tb.v -o and_gate
vvp and_gate

1. Create a new file for each module’s testbench:
   - Example: `and_gate_tb.v`
2. Inside, write a basic testbench like:

verilog
module and_gate_tb;
  reg a, b;
  wire y;

  and_gate uut (.a(a), .b(b), .y(y));

  initial begin
    $display("A B | Y");
    $monitor("%b %b | %b", a, b, y);
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
  end
endmodule

