`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 14:54:36
// Design Name: 
// Module Name: soru3
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


module soru3 #(parameter c_clkfreg=100000000)(
    input clk,
    input rst,
    input signal_i,
    output reg signal_o=0
    );
    reg [31:0]sayac;// 1 ms sayici
    reg signal=0,signal2=0;//yukselme alcalma durumlarini kontrol etmek icin flip-floplar
    reg saymaya_basla=0;//degisim oldugunda 1' e ceviricez
    reg sayildi=0;  //1 ms sayildiginda 1 e cevirip atamayi gerceklestirecegiz
    always@(posedge clk)begin
        signal2<=signal;
        signal<=signal_i;
        
        //senkron reset oldugundan
        if(rst==1)begin
            signal_o<=0;
            sayac<=0;
            signal<=0;
            signal2<=0;
            saymaya_basla<=0;
            sayildi<=0;
        end
        
        //ondeki ff arkadakinden farkli olunca input'ta bir degisim oldugunu anlayacagiz
        if(signal2!=signal)begin
            saymaya_basla<=1;
        end
        
        //burda 1 ms'ye sayma gerceklesecek saymaya_basla komutundan sonra ve devam edecek
        if(saymaya_basla==1)begin
           if(sayac==(c_clkfreg/(10**2)))begin
                sayildi<=1;
                saymaya_basla<=0;
                sayac<=1;
           end
           else begin
                sayac<=sayac+1;
           end
        end
        if(sayildi==1)begin
            signal_o<=signal_i;
            sayildi<=0;
        end
    end
endmodule
