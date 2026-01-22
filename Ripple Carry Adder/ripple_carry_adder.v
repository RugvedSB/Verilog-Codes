`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name : Rugved Bopardikar
// Design Name: Ripple Carry Adder
// Module Name: ripple_carry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_carry_adder(
    output [3:0]S,
    output cout,
    input [3:0]A,
    input [3:0]B,
    input cin
    );

wire c1, c2, c3;
//Instantiating the full adders
full_adder F1(A[0], B[0], cin, S[0], c1);
full_adder F2(A[1], B[1], c1, S[1], c2);
full_adder F3(A[2], B[2], c2, S[2], c3);
full_adder F4(A[3], B[3], c3, S[3], cout);

endmodule
