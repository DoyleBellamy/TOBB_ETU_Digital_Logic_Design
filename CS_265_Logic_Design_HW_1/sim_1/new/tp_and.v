`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2022 22:43:33
// Design Name: 
// Module Name: tp_and
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


module tp_and();
    reg A,B;
    wire sonuc;
    cevrilebilir_and deneme(A,B,sonuc);
    
    initial begin
    A=1'b0;  B=1'b0; #50;
    A=1'b0;  B=1'b1; #50;
    A=1'b1;  B=1'b0; #50;
    A=1'b1;  B=1'b1; #50;
    end
endmodule
