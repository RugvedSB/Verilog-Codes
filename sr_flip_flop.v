`timescale 1ns / 1ps

module sr_flip_flop(
    output q, qb,
    input s, r, clk
    );
    
wire w1, w2;

nand N1(w1, s, clk);
nand N2(w2, r, clk);
nand N3(q, w1, qb);
nand N4(qb, w2, q);

endmodule
