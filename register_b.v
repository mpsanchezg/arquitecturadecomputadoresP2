`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:59:58 08/29/2018
// Design Name:
// Module Name:    register_b
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
module register_b(clk, data, load, out);
  input clk, load;
  input [7:0] data;
  output [7:0] out;

  wire clk, load;
  wire [7:0] data;
  reg [7:0] out;

  initial begin
	out = 10;
  end

  always @(posedge clk) begin
	 if (load) begin
		out <= data;
	 end
  end
endmodule
