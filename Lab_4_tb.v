`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Katie Bashus
// 
// Create Date: 09/25/2023 02:00:35 PM
// Design Name: 
// Module Name: Lab_4_tb
// Project Name: 
// Target Devices: 

// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab_4_tb();
    reg [3:0] A, B;
    reg sel;
    wire [6:0] o;
    
    final uut1(.A(A), .B(B), .s(sel), .display(o));
    
    initial 
    begin 
        A = 4'b0001; B = 4'b0010; sel = 1'b1;
        #2 A = 1'b0000; B = 4'b0000; sel = 1'b0;
        #2 A = 1'b0001; B = 4'b1000; sel = 1'b1;
        #2 A = 1'b0000; B = 4'b0100; sel = 1'b0;
        #2 A = 1'b0001; B = 4'b1111; sel = 1'b0;
        #2 $stop;
        end

endmodule
