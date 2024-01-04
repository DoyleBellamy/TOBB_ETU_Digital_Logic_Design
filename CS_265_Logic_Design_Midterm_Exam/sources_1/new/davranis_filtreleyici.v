`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 18:42:22
// Design Name: 
// Module Name: davranis_filtreleyici
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


module davranis_filtreleyici(
    input[2:0]saf_resim,
    output [4:0]filtrelenmis_resim
    );
    wire [4:0]y;
    assign y=(2*saf_resim)+17;
    reg[4:0]temp;
    always@*begin
        if(y>=25)begin 
            temp[3:1]=3'b000;
            temp[4]=y[4];//1 de koyulabilir direkt
            temp[0]=y[0];//1 de koyulabilir direkt
        end
        else begin 
            temp[3:1]=y[3:1];
            temp[4]=0;
            temp[0]=0;
        end    
    end
    assign filtrelenmis_resim=temp;
endmodule
