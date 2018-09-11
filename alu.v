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
module alu(a, b, s, z, n, c, v, out);
  input  [7:0] a, b;
  input  [2:0]    s;
  output [7:0]  out;
  output    z,n,c,v;

  wire [7:0] a, b;
  wire [2:0]    s;
  reg  [7:0]  out;
  reg  [8:0] temp;
  reg     z,n,c,v;
  
  always @(a, b, s) begin
	case(s)
		3'b000: temp  <=  a + b;
		3'b001: temp  <=  a - b;
		3'b010: temp  <=  a & b;
		3'b011: temp  <=  a | b;
		3'b100: temp  <=    ~ a;
		3'b101: temp  <=  a ^ b;
		3'b110: temp  <= a << 1;
		3'b111: temp  <= a << 1;
		default: temp <=  a + b;
	endcase
	out = temp[7:0];
  end
endmodule
