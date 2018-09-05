`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:41 09/05/2018 
// Design Name: 
// Module Name:    BCD 
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
module BCD(
	input wire[7:0] binary,
	output reg [3:0] hundreds,
	output reg [3:0] tens,
	output reg [3:0] ones
    );
	 
	 integer i;
	 always @(binary)
	 begin
		//set 100's, 10's, and 1's to 0
		hundreds = 4'd0;
		tens = 4'd0;
		ones = 4'd0;
		
		for (i=7; i>=0; i=i-1)
		begin
			//add 3 to columns >= 5
			if(hundreds >= 5)
				hundreds = hundreds + 3;
			if(tens >= 5)
				tens = tens + 3;
			if(ones >= 5)
				ones = ones + 3;
				
			//Shift left one
			hundreds = hundreds << 1;
			hundreds[0] = tens[3];
			tens = tens << 1;
			tens[0] = ones[3];
			ones = ones << 1;
			ones[0] = binary[i];
		end
	end
endmodule
