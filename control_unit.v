`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:41 09/04/2018 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(address, lRegB, lRegA, sMuxB, sMuxA, sAlu);
	input  [4:0] address;
	output         lRegB;
	output         lRegA;
	output [1:0]   sMuxB;
	output         sMuxA;
	output [2:0]    sAlu;
	
	wire [4:0] address;
	reg          lRegB;
	reg          lRegA;
	reg  [1:0]   sMuxB;
	reg          sMuxA;
	reg  [2:0]    sAlu;
	
	always @(address) begin
	case(address)
		5'b00000:
			begin
				lRegA <= 1;
				lRegB <= 0;
				sMuxB <= 2'b00;
				sMuxA <= 1;
				sAlu  <= 3'b000;
			end
		5'b00001:
			begin
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=      0;
				sMuxB <=  2'b10;
				sAlu  <= 3'b000;
			end
		5'b00010:
			begin
				lRegA <=     1;
				lRegB <=     0;
				sMuxA <=     1;
				sMuxB <= 2'b01;
				sAlu  <= 3'b000;
			end
		5'b00011:
			begin
				lRegA <=     0;
				lRegB <=     1;
				sMuxA <=     1;
				sMuxB <= 2'b01;
				sAlu  <= 3'b000;
			end
		5'b00100:
			begin
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=      0;
				sMuxB <=  2'b00;
				sAlu  <= 3'b000;
			end
		5'b00101:
			begin
				lRegA <= 0;
				lRegB <= 1;
				sMuxA <= 0;
				sMuxB <= 2'b00;
				sAlu  <= 3'b000;
			end
		5'b00110:
			begin
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=      0;
				sMuxB <=  2'b01;
				sAlu  <= 3'b000;
			end
		5'b00111:
			begin
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=      0;
				sMuxB <=  2'b00;
				sAlu  <= 3'b001;
			end
		5'b01000:
			begin
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=      0;
				sMuxB <=  2'b00;
				sAlu  <= 3'b001;
			end
		5'b01001: 
			begin
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=      0;
				sMuxB <=  2'b01;
				sAlu  <= 3'b001;
			end
		5'b01010:
			begin
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=      0;
				sMuxB <=  2'b00;
				sAlu  <= 3'b010;
			end
		5'b01011:
			begin
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=      0;
				sMuxB <=  2'b00;
				sAlu  <= 3'b010;
			end
		5'b01100: 
			begin
			  lRegA <=   1;
			  lRegB <=   0;
			  sMuxA <=   0;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b010;
			end
		5'b01101: 
			begin
			  lRegA <=  1;
			  lRegB <=  0;
			  sMuxA <=  0;
			  sMuxB <= 2'b00;
			  sAlu <= 3'b011;
			end
		5'b01110: 
			begin
			  lRegA <=   0;
			  lRegB <=   1;
			  sMuxA <=   0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b011;
			end
		5'b01111:
			begin
			  lRegA <=   1;
			  lRegB <=   0;
			  sMuxA <=   0;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b011;
			end
		5'b10000: 
			begin
			  lRegA <=   1;
			  lRegB <=   0;
			  sMuxA <=   0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
		5'b10001: 
			begin
			  lRegA <=   0;
			  lRegB <=   1;
			  sMuxA <=   0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
		5'b10010:
			begin
			  lRegA <=   1;
			  lRegB <=   0;
			  sMuxA <=   0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b101;
			end
		5'b10011:
			begin
			  lRegA <=   0;
			  lRegB <=   1;
			  sMuxA <=   0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b101;
			end
		5'b10100: 
			begin
			  lRegA <=   1;
			  lRegB <=   0;
			  sMuxA <=   0;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b101;
			end
	   5'b10101: 
			begin
			  lRegA <=   1;
			  lRegB <=   0;
		     sMuxA <=   0;
		     sMuxB <=  2'b00;
		     sAlu  <= 3'b110;
			end
		5'b10110: 
			begin
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=      0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b110;
			end
	   5'b10111:
			begin
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=      0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
		5'b11000:
			begin
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=      0;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
		default:
			begin
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=      0;
			  sMuxB <=      0;
			  sAlu  <= 3'b000;
			end
	endcase
  end

	

endmodule
