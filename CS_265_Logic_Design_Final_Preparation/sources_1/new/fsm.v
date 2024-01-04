`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2022 09:00:28
// Design Name: 
// Module Name: fsm
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


module fsm(
input clk,
input rst_n,
input [15:0] gnss_i,
input [15:0] altimetre_i,
input [7:0] hedef_yukseklik,
input yukseklik_bilgisi_i,
output motor_o,
output yesil_led_o,
output kirmizi_led_o
);

localparam S_YUKSEKLIK_BEKLE    = 2'b00;
localparam S_ACIL_DURUS         = 2'b01;
localparam S_UCUS               = 2'b10;

//combinational
reg hedef_hata;
reg motor_ac;
reg [15:0] sensor_fark;
reg [15:0] sensor_ortalama;

//registers
reg [1:0]hata;
reg [1:0]state;
reg [7:0] atanan_yukseklik;
reg yesil,kirmizi,motor;
always@*begin
    if(hedef_yukseklik<10||hedef_yukseklik>100)begin
        hedef_hata=1;
    end
    else hata=0;
    if(gnss_i>altimetre_i)begin
        sensor_fark=gnss_i-altimetre_i;
    end
    else begin
        sensor_fark=altimetre_i-gnss_i;
    end
    if(sensor_fark>9)begin
        sensor_ortalama=gnss_i;
    end
    else sensor_ortalama=(gnss_i+altimetre_i)>>1;
    
    motor_ac=0;
    if(state==S_UCUS)begin
        if(atanan_yukseklik>=sensor_ortalama)begin
            motor_ac=1;
        end
    end
end
always@(posedge clk,negedge rst_n)begin
    case(state)
        S_YUKSEKLIK_BEKLE:begin
            if(yukseklik_bilgisi_i==1)begin
                if(hedef_hata==0)begin
                    atanan_yukseklik<=hedef_yukseklik;
                    state<=S_UCUS;
                end
                else begin
                    if(hata==2)begin
                        state<=S_ACIL_DURUS;
                        kirmizi=1;
                    end
                    else begin
                        hata<=hata+1;
                    end
                
                end
            
            end
        end
        S_ACIL_DURUS:begin
        end
        S_UCUS:begin
            if(motor_ac==1)begin
                motor=1;
            end
        end
    
    endcase

end


endmodule
