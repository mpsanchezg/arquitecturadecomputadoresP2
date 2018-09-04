`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:03 08/29/2018 
// Design Name: 
// Module Name:    pc 
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
module pc(clk, pcc);
  input clk;
  output [7:0] pcc;

  reg [7:0] pcc;
  wire clk;

  initial begin
	pcc = 0;
  end

  always @(posedge clk) begin
	pcc <= pcc + 1;
	if (pcc == 3) begin
		pcc <= 0;
	end
  end
endmodule

