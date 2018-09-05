`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de los Andes
// Engineer: Santiago Figueroa Mc Intyre
// 
// Create Date:    21:13:53 09/04/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(regA, regB, S, M);
	input [7:0] regA, regB;
	input [2:0] S;
	output [7:0] M;
	
	wire [7:0] regA, regB;
	wire [2:0] S;
	reg [7:0] M;
	
	always begin
		case (S)
			3'b000: M <= regA + regB;
			3'b001: M <= regA - regB;
			3'b010: M <= regA & regB;
			3'b011: M <= regA | regB;
			3'b100: M <= ~regA;
			3'b101: M <= regA ^ regB;
			3'b110: M <= regA << 1;
			3'b111: M <= regA >> 1;
		endcase
	end

endmodule
