`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 15:10:55
// Design Name: 
// Module Name: tb_soru1
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


module tb_soru1( );
reg[4:0]number1_i;
reg[4:0]number2_i;
wire[8:0]mult_o;
soru1 uut(number1_i,number2_i,mult_o);
initial begin
number1_i=5'b00110;number2_i=5'b10011;#100;

number1_i=5'b01110;number2_i=5'b10011;#100;

number1_i=5'b10001;number2_i=5'b00010;#100;


number1_i=5'b10110;number2_i=5'b00110;#100;


end

endmodule
