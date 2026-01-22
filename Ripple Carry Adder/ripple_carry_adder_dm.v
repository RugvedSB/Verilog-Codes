`timescale 1ns / 1ps
//This is the code for Ripple Carry Adder with Dataflwo Modelling

module ripple_carry_adder_dm(
    output cout, [3:0]s,
    input cin, [3:0]a, [3:0]b
    );
    
assign {cout, s} = a + b + cin;

endmodule
