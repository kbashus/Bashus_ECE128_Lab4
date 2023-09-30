`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Katie Bashus
// 
// Create Date: 09/18/2023 01:49:13 PM
// Design Name: 
// Module Name: final
// Project Name:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module final(A, B, s, display);
    input [3:0] A, B;
    input s;
    output [6:0] display;
    
    wire [3:0] o;
    wire [3:0] Sum;
    wire Cout;
    wire [3:0] newCout;
    
    four_bit_adder uud0(.A(A), .B(B), .S(Sum), .Cout(Cout));
    assign newCout = {3'b0,Cout};
    Mux_2to1_gate uut1 (.Cout(newCout), .Sum(Sum), .sel(s), .o(o));
    seven_seg uud1(.Sum(o), .display(display));
    
endmodule
