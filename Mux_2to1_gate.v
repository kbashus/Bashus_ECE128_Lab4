`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 01:40:20 PM
// Design Name: 
// Module Name: Mux_2to1_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_2to1_gate(Cout, Sum, sel, o);
    input [3:0] Cout;
    input [3:0] Sum;
    input sel;
    output [3:0] o;
    
    assign o = sel ? Sum : Cout;

    
endmodule
