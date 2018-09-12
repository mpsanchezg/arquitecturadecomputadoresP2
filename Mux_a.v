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
module Mux_a(A, B, s, out);
	input [7:0] A, B;
	input [1:0]    s;
	output [7:0] out;
	
	reg [7:0] out;
	
	always @(s, A, B)
		case(s)
			'b00: out <=          A;
			'b01: out <= 'b00000001;
			'b10: out <= 'b00000000;
			'b11: out <=          B;
			default: out <= A;
		endcase
endmodule
