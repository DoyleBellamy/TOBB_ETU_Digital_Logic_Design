`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 11:04:08
// Design Name: 
// Module Name: ornek2
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

module ornek2
(
input clk,
input rst_n,
input datain_i,
output reg match_o,
output [9:0]data
);
reg [3:0]sayac=0;
reg yavas_clock=0;
reg [9:0]kaydirma=0;
always@(posedge clk,negedge rst_n)begin
    match_o<=0;
    if(sayac==5)begin
        yavas_clock<=~yavas_clock;
        sayac<=1;
    end
    else sayac<=sayac+1;
end
always@(yavas_clock)begin
    kaydirma[9]<=datain_i;
    kaydirma[8:0]<=kaydirma[9:1];
    if(kaydirma==10'b1111011010)begin
        match_o<=1;
    end
end
assign data =kaydirma;

endmodule
