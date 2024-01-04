`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 15:06:45
// Design Name: 
// Module Name: cevrilebilir_xor
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


module cevrilebilir_xor(
    input A,B,
    output F
    );
    wire B_not;
    cevrilebilir_not deneme(B,B_not);
    cevrilebilir_kapi deneme2(A,B_not,B, ,F,);
endmodule
