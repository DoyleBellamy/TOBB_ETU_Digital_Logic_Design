`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2022 10:48:27
// Design Name: 
// Module Name: adder
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


module adder(
input[3:0]a_i,
input[3:0]b_i,
input[3:0]c_i,
input[3:0]d_i,
input[3:0]e_i,
input[3:0]f_i,
input[3:0]g_i,
input[3:0]h_i,
input[3:0]i_i,
input[3:0]j_i,
input[3:0]k_i,
input[3:0]l_i,
input[3:0]m_i,
input[3:0]n_i,
input[3:0]o_i,
input[3:0]p_i,
output[7:0]sum_o
);
    assign sum_o=a_i+b_i+c_i+d_i+e_i+f_i+g_i+h_i+i_i+j_i+k_i+l_i+m_i+n_i+o_i+p_i;
endmodule
