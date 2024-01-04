`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 11:05:11
// Design Name: 
// Module Name: tb_ornek2
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


module tb_ornek2();
reg clk=0,rst=0,data;
wire[9:0]d;
wire match;
ornek2 uut(clk,rst,data,match,d);
always begin
    clk=~clk;
    #2;
end
initial begin
data=1;
#10;
data=0;
#10;
data=0;
#10;
data=0;
#10;data=1;
#10;
data=1;
#10;data=1;
#10;
data=0;
#10;data=0;
#10;
data=1;
#10;data=1;
#10;
data=0;
#10;data=1;
#10;
data=0;
#10;data=1;
#10;
data=0;
#10;data=1;
#10;
data=0;
#10;
end



endmodule
