`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Name : Rugved Bopardikar
// Design Name: Half Adder
// Module Name: half_adder
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


module half_adder(
    input a, b,
    output sout,cout
    );
    
assign sout = a ^ b;
assign cout = a & b;

endmodule