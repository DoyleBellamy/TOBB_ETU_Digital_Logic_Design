`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2022 22:36:55
// Design Name: 
// Module Name: tb_adder_pipe
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


module tb_adder_pipe(

    );
reg clk;
reg reset;
reg [3:0]a;
reg [3:0]b;
reg [3:0]c;
reg [3:0]d;
reg [3:0]e;
reg [3:0]f;
reg [3:0]g;
reg [3:0]h;
reg [3:0]i;
reg [3:0]j;
reg [3:0]k;
reg [3:0]l;
reg [3:0]m;
reg [3:0]n;
reg [3:0]o;
reg [3:0]p;
wire [7:0]out;
adder_pipe A(clk,reset,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,out);
initial begin 
    clk = 0;
    forever begin
    #10 clk = ~clk;
    end
end
initial begin
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
reset=0;a=1; b=2; c=3;d=4; e=0; f=5;g=6; h=7; i=8;j=9; k=10; l=11;m=12; n=13; o=14;p=15;#20;
reset=0;a=15; b=15; c=15;d=15; e=15; f=15;g=15; h=15; i=15;j=15; k=15; l=15;m=15; n=15; o=15;p=15;#20;
end
endmodule
