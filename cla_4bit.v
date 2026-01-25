`timescale 1ns / 1ps
//Carry Look Ahead Adder with Dataflow Modeilling

module cla_4bit(
    output cout,
    output [3:0]s,
    input cin,
    input  [3:0]a,
    input [3:0]b
    );
wire [3:0]p, g;
wire [4:1]c;

assign  p[0] = a[0] ^ b[0],
        p[1] = a[1] ^ b[1],
        p[2] = a[2] ^ b[2],
        p[3] = a[3] ^ b[3];
        
assign  g[0] = a[0] & b[0],
        g[1] = a[1] & b[1],
        g[2] = a[2] & b[2],
        g[3] = a[3] & b[3];
        
assign  c[1] = g[0] | (p[0] & cin),
        c[2] = g[1] | (p[1] & (g[0] | (p[0] & cin))),
        c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin),
        c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

assign  s[0] = p[0] ^ a[0],
        s[1] = p[1] ^ a[1],
        s[2] = p[2] ^ a[2],
        s[3] = p[3] ^ a[3];
        
assign cout = c[4];
endmodule