`timescale 1ns / 1ps
//This is the code for 2x4 Decoder with Dataflow Modelling

module decoder_2x4_dm(
    output [3:0]y,
    input e, a, b
    );
    
assign y[0] = e & ~a & ~b;
assign y[1] = e & ~a & b;
assign y[2] = e & a & ~b;
assign y[3] = e & a & b;

endmodule
