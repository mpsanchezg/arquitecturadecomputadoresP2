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
  reg       ntemp;
  reg     z,n,c,v;
  
  integer i;
  
  always @(a, b, s) begin  
   c <= 0;
	v <= 0;
	case(s)
		3'b000: 
		  begin
			 temp  <=  a + b;
			 if ((a >= 0 && a < 9'b010000000) && (b >= 0 && b < 9'b010000000) && temp >= 9'b010000000) 
			   begin
			     c <= 1;
				  v <= 1;
		      end
			 else if (a >= 9'b010000000 && b >= 9'b010000000 && (temp >= 0 && temp < 9'b010000000))
			     v <= 1;
			 else
            begin			 
			     c <= 0;
				  v <= 0;
				end
		  end
		3'b001: 
		  begin
			 temp  <=  a - b;
		    if ((a >= 0 && a < 9'b010000000) && (b >= 9'b010000000) && temp >= 9'b010000000) 
			   begin
			     c <= 1;
				  v <= 1;
		      end
			 else if (a >= 9'b010000000 && (b >= 0 && b < 9'b010000000) && (temp >= 0 && temp < 9'b010000000))
			     v <= 1;
			 else
            begin			 
			     c <= 0;
				  v <= 0;
				end
		  end
		3'b010: temp  <=  a & b;
		3'b011: temp  <=  a | b;
		3'b100: temp  <=    ~ a;
		3'b101: temp  <=  a ^ b;
		3'b110: temp  <= a << 1;
		3'b111: temp  <= a >> 1;
		default: temp <=  a + b;
	endcase
	for (i = 0; i < 8; i = i+1) 
		ntemp <= ntemp | temp[i];
	 
	z = ~ntemp;
	n = temp[7];
	out = temp[7:0];
  end
endmodule
