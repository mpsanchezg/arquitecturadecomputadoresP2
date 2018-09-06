`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:26 09/04/2018 
// Design Name: 
// Module Name:    Mux_a 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_a(A, s, out);
	input [7:0] A;
	input s;
	output [7:0] out;
	
	reg [7:0] out;
	
	always @(s, A)
		case(s)
			'b0: out <= A;
			'b1: out <= 'b00000000;
			default: out <= A;
		endcase
endmodule
