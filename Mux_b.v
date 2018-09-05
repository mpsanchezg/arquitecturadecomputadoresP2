`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:37 09/04/2018 
// Design Name: 
// Module Name:    Mux_b 
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
module Mux_b(B, Im, s, out);
	input  [7:0]    B, Im;
	input  [1:0]        s;
	output [7:0]      out;
	
	reg [7:0] out;
	
	always @(s, B, Im)
		case(s)
			'b00: out = B;
			'b01: out = 'b00000000;
			'b10: out = Im;
		endcase

endmodule
