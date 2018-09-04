`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:01:22 08/29/2018
// Design Name:
// Module Name:    alu
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
module alu(a, b, s, out);
  input  [7:0] a, b;
  input  [2:0] s;
  output [7:0] out;

  wire [7:0] a, b;
  wire [2:0] s;
  reg [7:0] out;

  always @(a, b, s) begin
	case(s)
		3'b000: out = a + b;
		3'b001: out = a - b;
		3'b010: out = a & b;
		3'b011: out = a | b;

	endcase
  end
endmodule
