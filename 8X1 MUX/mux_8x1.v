`timescale 1ns / 1ps

module mux_2x1(
    output y,
    input i0, i1, s
    );

wire w1, w2, w3;

not N1(w1, s);
and A1 (w2, w1, i0);
and A2(w3, s, i1);
or O1(y, w2, w3);

endmodule

module mux_4x1(
    output y,
    input [3:0]I,
    input [1:0]S
);

wire w4, w5;

//Instantiate 2x1 MUX
mux_2x1 M1(w4, I[0], I[1], S[0]);
mux_2x1 M2(w5, I[2], I[3], S[0]);
mux_2x1 M3(y, w4, w5, S[1]);

endmodule

module mux_8x1(
    output y,
    input [7:0]i,
    input [2:0]s
);

wire w6, w7;

//Instantiate 4x1 MUX
mux_4x1 M4(w6, i[3:0], s[1:0]);
mux_4x1 M5(w7, i[7:4], s[1:0]);

//Instantiate 2x1 MUX
mux_2x1 M6(y, w6, w7, s[2]);

endmodule
