`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 10:36:17
// Design Name: 
// Module Name: tb_yavasSayac
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


module tb_yavasSayac();
reg clk=0;
reg sifirlama=0;      // Eğer 1 ise sayac 
reg sayma_yonu=1;       // Eğer 1 ise sayacı sayma miktarı kadar arttıaracak, sıfır ise sayma miktarı kadar 
reg [2:0] sayma_miktari=5;
wire [5:0] sayac_out;

yavasSayac uut(clk,sifirlama,sayma_yonu,sayma_miktari,sayac_out);
always begin
    clk=~clk;
    #10;
end
initial begin
    sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10
    sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10sayma_miktari=5;
    #10;
    sayma_miktari=2;
    #10;
    sayma_miktari=3;
    #10;
    sayma_miktari=4;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=6;
    #10;
    sayma_miktari=7;
    #10;
    sayma_miktari=1;
    #10;
    sayma_miktari=5;
    #10;
    sayma_miktari=5;
    #10
    $finish;
    
end
endmodule
