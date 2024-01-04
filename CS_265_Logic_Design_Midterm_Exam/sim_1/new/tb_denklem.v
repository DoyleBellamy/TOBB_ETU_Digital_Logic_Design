`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 18:50:46
// Design Name: 
// Module Name: tb_denklem
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


module tb_denklem();

reg [2:0]x_tb;
wire [4:0]y_tb;
denklem deneme(x_tb,y_tb);
initial begin
x_tb=7;
#50;
x_tb=6;
#50;
x_tb=5;
#50;
x_tb=4;
#50;
x_tb=3;
#50;
x_tb=2;
#50;
x_tb=1;
#50;
x_tb=0;
#50;
end
endmodule
