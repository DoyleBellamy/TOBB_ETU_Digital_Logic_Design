`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2022 14:56:21
// Design Name: 
// Module Name: 
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


module cevrilebilir_kapi(
    input c,p,q,
    output x,y,z
);
    wire y_w,c_not,y_w2,z_w,z_w2;
    buf(x,c);
    and(y_w,c,p);
    not(c_not,c);
    and(y_w2,c_not,q);
    or(y,y_w,y_w2);
    and(z_w,c,q);
    and(z_w2,c_not,p);
    or(z,z_w,z_w2);

endmodule
