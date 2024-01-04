`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 10:55:37
// Design Name: 
// Module Name: ornek1
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


module ornek1 #(parameter c_clkfreq = 100000000)
(
input clk,
input rst,
input valid_i,
input [7:0] datain_i,
output ready_o,
output reg [9:0] dataout_o=0
);

reg [40:0]sayac = 1;
reg[7:0]data[2:0];
reg ready=0;

initial begin
data[0]=0;
data[1]=0;
data[2]=0;
end

//reset ekle
always@(posedge clk,negedge rst)begin
    
    if(sayac==(c_clkfreq/10))begin
      ready<=1;
      sayac<=1;  
    end
    else sayac<=sayac+1;
    if(ready==1)begin
        if(valid_i==1)begin
            data[2]<=data[1];
            data[1]<=data[0];
            data[0]<=datain_i;
            dataout_o<=(data[2]+data[1]+data[0]+datain_i)>>2;
            //dataout_o<=datain_i;
        end
        ready<=0;
    end
end


assign ready_o=ready;

endmodule


