`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 19:13:53
// Design Name: 
// Module Name: tb_resim_filtreleyici
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


module tb_resim_filtreleyici();

reg[2:0]saf;
wire[4:0]filtre;
resim_filtreleyici deneme(saf,filtre);
initial begin
saf=7;
#50;
saf=6;
#50;
saf=5;
#50;
saf=4;
#50;
saf=3;
#50;
saf=2;
#50;
saf=1;
#50;
saf=0;
#50;

end



endmodule
