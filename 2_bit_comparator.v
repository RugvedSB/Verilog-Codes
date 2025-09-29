`timescale 1ns / 1ps

// 1-bit comparatot code
module comp(E0, G0, L0, A, B);
output E0, G0, L0;
input A, B;
wire w1, w2;

not N1(w1, A);
not N2(w2, B);
xnor X1(E0, A, B);
and A1(G0, A, w2);
and A2(L0, B, w1);
endmodule 

module two_bit_comparator(E2, G2, L2, A0, B0, A1, B1);
output E2, G2, L2;
input A0, B0, A1, B1;
wire E0, G0, L0, E1, G1, L1;

comp C1(E0, G0, L0, A0, B0);
comp C2(E1, G1, L1, A1, B1);
and A3(E2, E1, E0);
and A4(w1, G0, E1);
and A5(w2, L0, E1);
or O1(G2, w1, G1);
or O2(L2, w2, L1);
endmodule
