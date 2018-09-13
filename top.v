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
// FALTA COMPLETAR EL CU Y LA ALU!!!!!!! >=(
module computer(sw, Led, seg, an, clk);
  
  input sw;
  input clk;
  output [7:0] Led;
  output reg [6:0] seg;
  output reg [3:0]  an;
  
  wire  [7:0]   pc_out_bus; // PC
  wire [14:0]   im_out_bus; // IM
  wire        out_cu_lregB; // CU to regB
  wire        out_cu_lregA; // CU to regA
  wire  [1:0] out_cu_smuxB; // CU to MuxB
  wire  [1:0] out_cu_smuxA; // CU to MuxA
  wire  [2:0]  out_cu_sAlu; // CU to ALU
  wire          out_cu_wDM; // CU to DM
  wire        out_cu_sMuxD; // CU to MuxD
  wire          out_cu_lPC; // CU to PC
  wire  [7:0]     out_muxB; // MuxB
  wire  [7:0]     out_muxA; // MuxA
  wire  [7:0] regA_out_bus; // RegA
  wire  [7:0] regB_out_bus; // RegB
  wire  [7:0]  alu_out_bus; // ALU
  wire          z, n, c, v; // ALU
  wire  [6:0]     seg_out1;
  wire  [6:0]     seg_out2;
  wire  [6:0]     seg_out3;

  wire  [7:0]   dm_out_bus; // DM
  wire  [7:0]     out_muxD; // MuxD
  wire  [3:0] regS_out_bus; // RegS
  
  wire [3:0] bcd_out1;
  wire [3:0] bcd_out2;
  wire [3:0] bcd_out3;

  
  pc PC(.clk(sw),                              // Program Counter
   .dataIM(im_out_bus[7:0]),
	.l(out_cu_lPC),
	.pcc(pc_out_bus));
  instruction_memory im(.address(pc_out_bus),
	.out(im_out_bus));
  control_unit CU(.address(im_out_bus[14:8]), // Control Unit
	.dataRegS(regS_out_bus),
	.lRegB(out_cu_lregB),
	.lRegA(out_cu_lregA),
	.sMuxB(out_cu_smuxB),
	.sMuxA(out_cu_smuxA),
	.sAlu(out_cu_sAlu),
	.wDM(out_cu_wDM),
	.sMuxD(out_cu_sMuxD),
	.lPC(out_cu_lPC));
  register_a regA(.clk(sw),						  // Register A
	.data(alu_out_bus),
	.load(out_cu_lregA), 
	.out(regA_out_bus));
  register_b regB(.clk(sw),                    // Register B
	.data(alu_out_bus),
	.load(out_cu_lregB), 
	.out(regB_out_bus));
  Mux_a MuxA(.A(regA_out_bus),                // Multiplexer A
	.B(regB_out_bus),
   .s(out_cu_smuxA),
   .out(out_muxA));
  Mux_b MuxB(.B(regB_out_bus),                // Multiplexer B
   .Im(im_out_bus[7:0]),
	.dataDM(dm_out_bus),
	.s(out_cu_smuxB[1:0]), 
	.out(out_muxB));
  alu ALU(.a(out_muxA),                        // ALU   (a, b, s, z, n, c, v, out);
	.b(out_muxB),
	.s(out_cu_sAlu),
	.z(z),
	.n(n),
	.c(c),
	.v(v),
	.out(alu_out_bus));
  data_memory dm(.dataIn(alu_out_bus),                 // Data Memory
   .address(out_muxD),
	.clk(sw),
	.w(out_cu_wDM),
	.dataOut(dm_out_bus));
  mux_data muxD(.dataIM(im_out_bus[7:0]),       // mux_data(dataIM, dataRegB, s, dataOut);
   .dataRegB(regB_out_bus),
   .s(out_cu_sMuxD),
   .dataOut(out_muxD));     
  register_status regS(.clk(sw),               // register_status(clk, z, n, c, v, out);
   .z(z),
	.n(n),
	.c(c),
	.v(v),
	.out(regS_out_bus));
  BCD bcd(.binary(alu_out_bus),
	.hundreds(bcd_out3),
	.tens(bcd_out2),
	.ones(bcd_out1));
  segment7 seg1(.bcd(bcd_out1),
	.seg(seg_out1));
  segment7 seg2(.bcd(bcd_out2),
	.seg(seg_out2));
  segment7 seg3(.bcd(bcd_out3),
	.seg(seg_out3));
  
  assign Led = alu_out_bus; 
  integer i;
  initial begin
	i = 0;
  end
  
  always @(posedge clk) begin
	i <= i+1;
	if(i == 1 || i == 2 || i == 3) begin
		an <= 4'b1110;
		seg <= seg_out1;		
	end
	else if(i == 32 || i == 33 || i == 34) begin
		an <= 4'b1101;
		seg <= seg_out2;
	end
	else if(i == 64 || i == 65 || i == 66) begin
		an <= 4'b1011;
		seg <= seg_out3;
	end
	else if(i == 96|| i == 97|| i == 98) begin
		an <= 4'b0111;
		if(alu_out_bus >= 'b01000000) begin
			an <= 4'b0111;
			seg <= 'b0111111;
		end
		else begin
			an <= 4'b0111;
			seg <= 'b1000000;
		end
	end
	else if (i == 128) begin
		i <= 0;
	 end
	else begin
		/*an <= 'b1110;
		seg <= 'b1111111;
		an <= 'b1101;
		seg <= 'b1111111;
		an <= 'b1011;
		seg <= 'b1111111;
		an <= 'b0111;
		seg <= 'b1111111;*/
		an <= 'b1111;
		
	end		
  end
  
  
endmodule

