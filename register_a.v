`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:14 08/29/2018 
// Design Name: 
// Module Name:    register_a 
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
module register_a(clk, data, load, out);
  input clk, load;
  input [7:0] data;
  output [7:0] out;

  wire clk, load;
  wire [7:0] data;
  reg [7:0] out;

  initial begin
	out = 8'b00000000;
  end

  always @(posedge clk) begin
	 if (load) begin
		out <= data;
	 end
  end
endmodule

