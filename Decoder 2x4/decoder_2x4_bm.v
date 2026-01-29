`timescale 1ns / 1ps

//This is the code for 2x4 Decoder with Behavioral Modelling

module decoder_2x4_bm(
    output reg w,
    output reg x,
    output reg y,
    output reg z,
    input a, b
    );
    
always @(a, b)
case({a, b})
2'b00 : begin
w = 1;
x = 0;
y = 0;
z = 0;
end

2'b01 : begin 
w = 0;
x = 1;
y = 0;
z = 0;
end

2'b10 : begin
w = 0;
x = 0;
y = 1;
z = 0;
end

2'b11 : begin
w = 0;
x = 0;
y = 0;
z = 1;
end
endcase
endmodule
