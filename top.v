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

module top(sw, Led, seg, an, clk);
	input sw;
	input clk;
	output [7:0] Led;
	output [6:0] seg;
	output [3:0]  an;
	computer Comp(.sw(sw), 
	.Led(Led), 
	.seg(seg), 
	 .an(an),
	 .clk(clk));
endmodule

module computer(sw, Led, seg, an, clk);
  input sw;
  input clk;
  output [7:0] Led;
  output reg [6:0] seg;
  output reg [3:0]  an;
  
  wire  [7:0]   pc_out_bus; // PC
  wire [12:0]   im_out_bus; // IM
  wire        out_cu_lregB; // CU
  wire        out_cu_lregA; // CU
  wire  [1:0] out_cu_smuxB; // CU
  wire        out_cu_smuxA; // CU
  wire  [2:0]  out_cu_sAlu; // CU
  wire  [7:0]     out_muxB; // MuxB
  wire  [7:0]     out_muxA; // MuxA
  wire  [7:0] regA_out_bus; // RegA
  wire  [7:0] regB_out_bus; // RegB
  wire  [7:0]  alu_out_bus; // ALU
  wire  [6:0]     seg_out1;
  wire  [6:0]     seg_out2;
  wire  [6:0]     seg_out3;
  wire  [6:0]     seg_out4;
  
  wire [3:0] bcd_out1;
  wire [3:0] bcd_out2;
  wire [3:0] bcd_out3;
  wire [3:0] bcd_out4;
  
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
	.load(out_cu_lregA), 
	.out(regA_out_bus));
  register_b regB(.clk(sw),                    // Register B
	.data(alu_out_bus),
	.load(out_cu_lregB), 
	.out(regB_out_bus));
	Mux_a MuxA(.A(regA_out_bus),                // Multiplexer A
   .s(out_cu_smuxA),
   .out(out_muxA));
   Mux_b MuxB(.B(regB_out_bus),                // Multiplexer B
   .Im(im_out_bus[7:0]), 
	.s(out_cu_smuxB[1:0]), 
	.out(out_muxB));
  alu ALU(.a(out_muxA),                        // ALU  
	.b(out_muxB),
	.s(out_cu_sAlu),
	.out(alu_out_bus));
  BCD bcd(.binary(regA_out_bus),
	.hundreds(bcd_out3),
	.tens(bcd_out2),
	.ones(bcd_out1));
  segment7 seg1(.bcd(bcd_out1),
	.seg(seg_out1));
  segment7 seg2(.bcd(bcd_out2),
	.seg(seg_out2));
  segment7 seg3(.bcd(bcd_out3),
	.seg(seg_out3));
	
  
  assign Led = regA_out_bus; 
  integer i;
  initial begin
	i = 0;
  end
  
  
  
  always @(posedge clk) begin
	i <= i+1;
	if(i%16 == 0) begin
		an <= 4'b1110;
		seg <= seg_out1;
	end
	else if(i%16 == 4) begin
		an <= 4'b1101;
		seg <= seg_out2;
	end
	else if(i%16 == 8) begin
		an <= 4'b1011;
		seg <= seg_out3;
	end
	else if(i%16 == 12) begin
		an <= 4'b0111;
		seg <= 'b1000000;
	end
	else begin
		an <= 4'b1111;
	end
  end
  
  
endmodule

