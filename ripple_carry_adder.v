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
    output [3:0]S, cout, 
    input [3:0]A, [3:0]B,
    input cin
    );

wire c1, c2, c3;
//Instantiating the full adders
full_adder F1(S0, c1, A0, B0, cin);
full_adder F2(S1, c2, A1, B1, c1);
full_adder F3(S2, c3, A2, B2, c2);
full_adder F4(S3, cout, A3, B3, c3);

endmodule
