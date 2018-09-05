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
  output [12:0] out;

  wire [7:0] address;
  wire [12:0] out;

  reg [12:0] mem [0:24];

  assign out = mem[address];
  initial begin
    mem[0] = 13'b0000010100000;
	 mem[1] = 13'b0000101010000;
	 mem[2] = 13'b0001010101000;
	 mem[3] = 13'b0001101101000;
	 mem[4] = 13'b0010010000000;
	 mem[5] = 13'b0010101000000;
	 mem[6] = 13'b0011010001000;
	 mem[7] = 13'b0011110000001;
	 mem[8] = 13'b0100001000001;
	 mem[9] = 13'b0100110001001;
	 mem[10] = 13'b0101010000010;
	 mem[11] = 13'b0101101000010;
	 mem[12] = 13'b0110010001010;
	 mem[13] = 13'b0110110000011;
	 mem[14] = 13'b0111001000011;
	 mem[15] = 13'b0111110001011;
	 mem[16] = 13'b1000010000100;
	 mem[17] = 13'b1000101000100;
	 mem[18] = 13'b1001010000101;
	 mem[19] = 13'b1001101000101;
	 mem[20] = 13'b1010010001101;
	 mem[21] = 13'b1010110000110;
	 mem[22] = 13'b1011001000110;
	 mem[23] = 13'b1011110000111;
	 mem[24] = 13'b1100001000111;
  end
  
endmodule

