`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:38 09/11/2018 
// Design Name: 
// Module Name:    register_status 
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
module register_status(clk, z,n,c,v, out);
  input   clk, z, n, c, v;
  output [3:0]        out;

  wire  clk, load;
  wire [3:0] data;
  reg  [3:0]  out;

  initial begin
	out = 4'b0000;
  end

  always @(posedge clk) begin
	 if (load) begin
		out <= data;
	 end
  end
endmodule
