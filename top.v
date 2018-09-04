`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:05 08/29/2018 
// Design Name: 
// Module Name:    top 
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

module top(sw, Led);
	input sw;
	output [7:0] Led;
	computer Comp(.sw(sw), .Led(Led));
endmodule

module computer(sw, Led);
  input sw;
  output [7:0]Led;
  wire [7:0] pc_out_bus;
  wire [14:0] im_out_bus;
  wire [7:0] regA_out_bus;
  wire [7:0] regB_out_bus;
  wire [7:0] alu_out_bus;
 
  pc PC(.clk(sw),
	.pcc(pc_out_bus));
  instruction_memory im(.address(pc_out_bus),
	.out(im_out_bus));
  register_a regA(.clk(sw),
	.data(alu_out_bus),
	.load(im_out_bus[5]), // cambiarlo por uno de los bits del instruction_memory
	.out(regA_out_bus));
  register_b regB(.clk(sw),
	.data(alu_out_bus),
	.load(im_out_bus[4]), // cambiarlo por uno de los bits del instruction_memory
	.out(regB_out_bus));
  alu ALU(.a(regA_out_bus),
	.b(regB_out_bus),
	.s(im_out_bus[3:0]),
	.out(alu_out_bus));
  assign Led = regA_out_bus; 
endmodule

