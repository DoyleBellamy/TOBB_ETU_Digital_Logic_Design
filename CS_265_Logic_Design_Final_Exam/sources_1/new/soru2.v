`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 14:54:27
// Design Name: 
// Module Name: soru2
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


module soru2#(parameter c_clkfreq=100000000)(
    input clk,
    input rst,
    input[9:0]start_pos_i, //ilk pos
    input[9:0]dest_pos_i,  //hedef pos
    input[7:0]start_vel_i, //ilk hiz
    input[7:0]vel_i,
    output reg reached_o=0,  //ulasildi
    output reg[9:0]pos_o=0,   //istenen pozisyon
    output reg[15:0]dest_reach_second_o=0 //ulasma suresi
    );
    reg[15:0]toplam_sure=0;
    reg [31:0]sayac=0;
    reg [7:0]anlik_hiz=0;
    reg baslangic_mi=1;
    reg bir_saniye=0;
    always@(posedge clk,posedge rst)begin
        if(rst==1)begin
            sayac<=0;
            baslangic_mi<=0; 
            bir_saniye<=0;
            anlik_hiz<=0; 
            toplam_sure<=0;  
            reached_o<=0;    
            pos_o<=0;
            dest_reach_second_o<=0;   
        end
        if(sayac==10**$clog2(c_clkfreq)*10)begin 
            sayac<=1;
            bir_saniye<=1;
            baslangic_mi<=1;
            toplam_sure<=toplam_sure+1;
        end
        else sayac<=sayac+1;
        //bir saniye olduysa
        if(bir_saniye==1)begin
            //baslangic verilerini aktarma  
            if(baslangic_mi==1)begin
                pos_o<=start_pos_i;
                anlik_hiz<=start_vel_i;
            end
            //baslangic onceden geldiyse artik anlik veriler gelecek
            else begin
                pos_o<=pos_o+anlik_hiz;
                anlik_hiz<=vel_i;
            end
            //pos_o dext_o u gectiyse artik degerlerimizi atayabiliriz
            if(pos_o>=dest_pos_i&&reached_o==0)begin 
                reached_o<=1;
                dest_reach_second_o<=toplam_sure;
            end
            //en az 1 kere girildiyse baslangicta degilizdir
            //ve bir saniye de her turlu dolmustur
            baslangic_mi<=0;
            bir_saniye<=0;
        end
    end
    
    
    
endmodule
