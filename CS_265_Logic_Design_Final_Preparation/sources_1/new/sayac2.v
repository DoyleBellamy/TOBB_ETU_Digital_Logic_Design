`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 02:06:02
// Design Name: 
// Module Name: sayac2
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
module sayac2#(parameter N=5)(
input clk,rst,
output [N-1:0]count
);
reg [N-1:0]c=0;
always@(posedge clk,negedge rst)begin
    if(rst==1)begin
        c<=0;
    end
    else
        c<=c+1;
end
assign count=c;
endmodule