`timescale 1ns / 1ps

module JK_FF(
    output reg Q,
    input J, K, clk
    );
    
always @(posedge clk)
case ({J, K})
2'b00 : Q <= Q;
2'b01 : Q <= 1'b0;
2'b00 : Q <= 1'b1;
2'b00 : Q <= !Q;
endcase
endmodule
