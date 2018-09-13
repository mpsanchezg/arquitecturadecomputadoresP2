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
module Mux_b(B, Im, dataDM, s, out);
	input  [7:0] B, Im, dataDM;
	input  [1:0]             s;
	output [7:0]           out;
	
	reg [7:0] out;
	
	always @(s, B, Im, dataDM)
		case(s)
			'b00: out <= B;
			'b01: out <= Im;
			'b10: out <= 'b00000000;
			'b11: out <= dataDM;
			default: out <= B;
		endcase

endmodule
