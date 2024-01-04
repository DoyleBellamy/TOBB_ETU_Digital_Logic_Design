`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 14:53:26
// Design Name: 
// Module Name: soru1
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


module soru1(
    input[4:0]number1_i,
    input[4:0]number2_i,
    output reg [8:0]mult_o=0
    );
    reg [7:0]bir=0;
    reg [7:0]iki=0;
    reg [7:0]uc=0;
    reg [7:0]dort=0;
    always@(number1_i or number2_i) begin
            if(number1_i[0]==1)begin
                bir=number2_i;//kendisini al
            end
            if(number1_i[1]==1)begin
                iki=(number2_i<<1);//2'yle carp
            end
            if(number1_i[2]==1)begin
                uc=(number2_i<<2);//4'le carp
            end
            if(number1_i[3]==1)begin
                dort=(number2_i<<3);//8'le carp
            end
            mult_o[7:0]=bir+iki+uc+dort;   
            mult_o[8]=number1_i[4]^number2_i[4];
    end
endmodule
