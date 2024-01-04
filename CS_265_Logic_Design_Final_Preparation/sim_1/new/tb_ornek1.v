`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 11:50:31
// Design Name: 
// Module Name: tb_ornek1
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


module tb_ornek1();
reg clk=0;
reg rst=0;
reg valid_i;
reg [7:0] datain_i;
wire ready_o;
wire [9:0] dataout_o;

ornek1 #(60)uut(clk,rst,valid_i,datain_i,ready_o,dataout_o);
always begin 
    clk=~clk;
    #10;
end
initial begin
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;
valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;

valid_i=1;datain_i=15;#20;
valid_i=1;datain_i=20;#20;
valid_i=1;datain_i=25;#20;


valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
valid_i=1;datain_i=1;#20;
valid_i=1;datain_i=2;#20;
valid_i=1;datain_i=3;#20;
end

endmodule
