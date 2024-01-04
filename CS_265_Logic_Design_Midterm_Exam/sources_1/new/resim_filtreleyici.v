`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 18:42:04
// Design Name: 
// Module Name: resim_filtreleyici
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


module resim_filtreleyici(
    input[2:0]saf_resim,
    output [4:0]filtrelenmis_resim
);
    wire [4:0]temp;
    denklem cagirma(saf_resim,temp);
    wire en_anlamli_iki_basamgin_andi;
    and(en_anlamli_iki_basamgin_andi,temp[4],temp[3]);

    wire not_en_anlamli_iki_basamgin_andi;
    not(not_en_anlamli_iki_basamgin_andi,en_anlamli_iki_basamgin_andi);
    and(filtrelenmis_resim[4],en_anlamli_iki_basamgin_andi,temp[4]);
    and(filtrelenmis_resim[3],not_en_anlamli_iki_basamgin_andi,temp[3]);
    and(filtrelenmis_resim[2],not_en_anlamli_iki_basamgin_andi,temp[2]);
    and(filtrelenmis_resim[1],not_en_anlamli_iki_basamgin_andi,temp[1]);
    and(filtrelenmis_resim[0],en_anlamli_iki_basamgin_andi,temp[0]);

endmodule
