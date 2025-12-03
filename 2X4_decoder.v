`timescale 1ns / 1ps

module X4_decoder(
    output [3:0] y,
    input [1:0] x
    );

wire w1,w2;

not N1(w1, x1);
not N2(w2, x0);

and A1(y0, w1, w2);
and A2(y1, w1, x0);
and A3(y2, w2, x1);
and A4(y3, x1, x0);

endmodule