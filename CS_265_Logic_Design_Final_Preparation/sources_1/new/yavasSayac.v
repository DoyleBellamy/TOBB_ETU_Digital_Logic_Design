`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 10:35:14
// Design Name: 
// Module Name: yavasSayac
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



module yavasSayac(
    input clk,        
    input sifirlama,      // Eðer 1 ise sayac sýfýrlanacak
    input sayma_yonu,       // Eðer 1 ise sayacý sayma miktarý kadar arttýaracak, sýfýr ise sayma miktarý kadar azaltacak
    input [2:0] sayma_miktari, 
    output reg [5:0] sayac_out = 0
);
    reg yavas_sayma=0;
    reg [2:0]sayac=0;
    reg girdi_mi=0;
    always@(posedge clk)begin
        if(sayac==4)begin 
            yavas_sayma<=~yavas_sayma;
            girdi_mi<=1;
            sayac<=0;
        end
        sayac<=sayac+1;
    end
    
    reg devam_mi=1;
    
    always@(yavas_sayma)begin 
        if(sifirlama==1)begin 
            sayac=0;
            sayac_out=0;
        end
        if(girdi_mi==1)begin
            if(sayac_out==0&&sayma_yonu==0) begin 
                devam_mi=0;
            end
            if(devam_mi!=0)begin 
                if(sayma_yonu==1)begin 
                    sayac_out=sayac_out+sayma_miktari;
                end
                else begin
                   sayac_out=sayac_out-sayma_miktari;
                end
            end
        end
    end  
endmodule

