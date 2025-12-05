`timescale 1ns/1ps

module encoder_8x3(
    output [2:0]y,
    input [7:0]x
);

or O1(y2, x[7:4]);
or O2(y1, x2, x3, x6, x7);
or O3(y0, x1, x3, x5, x7);

endmodule