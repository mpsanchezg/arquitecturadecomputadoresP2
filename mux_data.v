`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:47 09/11/2018 
// Design Name: 
// Module Name:    mux_data 
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
module mux_data(dataIM, dataRegB, s, dataOut);
	input [7:0]   dataIM;
	input [7:0] dataRegB;
	input              s;
	
	output [7:0] dataOut;
	
	reg [7:0] dataOut;
	
	always @(s, dataIM, dataRegB)
		case(s)
			'b0: dataOut     <=   dataIM;
			'b1: dataOut     <= dataRegB;
			default: dataOut <=   dataIM;
		endcase
endmodule
