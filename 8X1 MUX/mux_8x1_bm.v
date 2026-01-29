`timescale 1ns / 1ps

//This is the verilog code for the 8x1 MUX using Behavioral Modelling
module mux_8x1_bm(
    output reg y,
    input a, b, c, d, e, f, g, h,
    input [2:0]s
    );
    
always @(a, b, c, d, e, f, g, h, s)
case(s)
3'b000 : y = a;
3'b001 : y = b;
3'b010 : y = c;
3'b011 : y = d;
3'b100 : y = e;
3'b101 : y = f;
3'b110 : y = g;
3'b111 : y = h;
endcase
endmodule
