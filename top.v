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
  output [7:0]          Led;
  wire   [7:0]   pc_out_bus; // PC
  wire  [12:0]   im_out_bus; // IM
  wire         out_cu_lregB; // CU
  wire         out_cu_lregA; // CU
  wire   [1:0] out_cu_smuxB; // CU
  wire         out_cu_smuxA; // CU
  wire   [2:0]  out_cu_sAlu; // CU
  wire   [7:0]     out_muxB;
  wire   [7:0]     out_muxA;
  wire   [7:0] regA_out_bus; // RegA
  wire   [7:0] regB_out_bus; // RegB
  wire   [7:0]  alu_out_bus; // ALU
 
  pc PC(.clk(sw),                              // Program Counter
	.pcc(pc_out_bus));
  instruction_memory im(.address(pc_out_bus),
	.out(im_out_bus));
	control_unit CU(.address(im_out_bus[12:8]), // Control Unit
	.lRegB(out_cu_lregB),
	.lRegA(out_cu_lregA),
	.sMuxB(out_cu_smuxB),
	.sMuxA(out_cu_smuxA),
	 .sAlu(out_cu_sAlu));
  register_a regA(.clk(sw),						  // Register A
	.data(alu_out_bus),
	.load(im_out_bus[5]), 
	.out(regA_out_bus));
  register_b regB(.clk(sw),                    // Register B
	.data(alu_out_bus),
	.load(im_out_bus[4]), 
	.out(regB_out_bus));
	Mux_a MuxA(.A(regA_out_bus),                     // Multiplexer A
   .s(out_cu_smuxA),
   .out(out_muxA));
   Mux_b MuxB(.B(regB_out_bus),                     // Multiplexer B
   .Im(im_out_bus[7:0]), 
	.s(out_cu_smuxB), 
	.out(out_muxB));
  alu ALU(.a(out_muxA),                        // ALU  
	.b(out_muxB),
	.s(out_cu_sAlu),
	.out(alu_out_bus));
  assign Led = regA_out_bus; 
endmodule

