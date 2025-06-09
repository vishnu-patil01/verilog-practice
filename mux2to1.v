 Module: AND Gate
 Author: Vishnu Patil
 Date: June 2025
 Description: Basic 2-input AND gate.

module mux2to1 (input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule
