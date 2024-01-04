`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2022 22:53:49
// Design Name: 
// Module Name: tp_not
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


module tp_not();
    reg A;
    wire F;
    cevrilebilir_not deneme(A,F);
    
    initial begin
    A=1'b0; #50;
    A=1'b1; #50;
    end
endmodule
