`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:01:04 08/29/2018
// Design Name:
// Module Name:    instruction_memory
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
module instruction_memory(address, out);
  input [7:0] address;
  output [14:0] out;

  wire [7:0] address;
  wire [14:0] out;

  reg [14:0] mem [0:14];

  assign out = mem[address];
  initial begin
    mem[0] = 14'b100000;
	 mem[1] = 14'b100001;
	 mem[2] = 14'b100010;
	 mem[3] = 14'b100011;
	 mem[4] = 14'b000011;
	 mem[5] = 14'b000011;
	 mem[6] = 14'b000011;
	 mem[7] = 14'b000011;
	 mem[8] = 14'b000011;
	 mem[9] = 14'b000011;
	 mem[10] = 14'b000011;
	 mem[11] = 14'b000011;
	 mem[12] = 14'b000011;
	 mem[13] = 14'b000011;
	 mem[14] = 14'b000011;
  end
endmodule
