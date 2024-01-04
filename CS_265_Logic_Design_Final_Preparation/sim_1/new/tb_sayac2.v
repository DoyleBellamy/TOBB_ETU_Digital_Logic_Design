`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 02:07:30
// Design Name: 
// Module Name: tb_sayac2
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


module tb_sayac2();

reg clk;
reg rst;
initial begin
clk=0;
rst=0;
 end
wire [4:0]count;
sayac2#(5) uut(clk,rst,count);
always begin
    clk=~clk;
    #5;
end
endmodule
