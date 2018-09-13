`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:03 09/11/2018 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(dataIn, address, w, clk, dataOut);
	input  [7:0]  dataIn;
	input  [7:0] address;
	input              w;
	input            clk;
	output [7:0] dataOut;
	
	reg [7:0]   dataOut;
	reg [7:0] mem[0:32];
	
	integer i;
	
	initial
		begin
		dataOut <= 0;
		for(i = 0; i < 33; i=i+1)
			mem[i] = i;
			
		end
	always @(posedge clk)
		begin
			if (w == 1'b0)
				mem[address] <= dataIn;
				
			else
				dataOut <= mem[address];
				
		end
endmodule
