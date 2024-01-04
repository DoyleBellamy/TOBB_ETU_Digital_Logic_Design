`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2022 23:07:32
// Design Name: 
// Module Name: tp_or
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


module tp_or();
    reg A,B;
    wire F;
    cevrilebilir_or deneme(A,B,F);
    initial begin
    A=1'b0;  B=1'b0; #50;
    A=1'b0;  B=1'b1; #50;
    A=1'b1;  B=1'b0; #50;
    A=1'b1;  B=1'b1; #50;
    end
endmodule
