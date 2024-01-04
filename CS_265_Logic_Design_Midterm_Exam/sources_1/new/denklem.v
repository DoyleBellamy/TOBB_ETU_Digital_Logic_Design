`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 18:41:38
// Design Name: 
// Module Name: denklem
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


module denklem(
    input [2:0]x,
    output [4:0] y
);
    //bu atamalari buff ile de halledebiliriz 
    //ama bunu hocamiz soyledikten sonra hatirladim bundan dolayi da 
    //soruyu or'lar ve bos 1 ler kullanarak hallettim
    or(y[4],1,1);
    or(y[3],x[2],x[2]);
    or(y[2],x[1],x[1]);
    or(y[1],x[0],x[0]);
    or(y[0],1,1);
endmodule
