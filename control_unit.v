`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:71:41 09/04/2018 
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
module control_unit(address, dataRegS, lRegB, lRegA, sMuxB, sMuxA, sAlu, wDM, sMuxD, lPC);
	input  [6:0]  address;
	input  [3:0] dataRegS;
	output          lRegB;
	output          lRegA;
	output [1:0]    sMuxB;
	output [1:0]    sMuxA;
	output [2:0]     sAlu;
	output            wDM;
	output          sMuxD;
	output            lPC;
	
	wire [6:0]  address;
	wire [3:0] dataRegS;
	reg           lRegB;
	reg           lRegA;
	reg  [1:0]    sMuxB;
	reg  [1:0]    sMuxA;
	reg  [2:0]     sAlu;
	reg             wDM;
	reg           sMuxD;
	reg             lPC;
	
	always @(*) begin
	case(address)
		7'b0000000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxB <=  2'b00;
				sMuxA <=  2'b10;
				sAlu  <= 3'b000;
			end
		7'b0000001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b00;
				sMuxB <=  2'b00;
				sAlu  <= 3'b000;
			end
		7'b0000010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=  2'b10;
				sMuxB <=  2'b01;
				sAlu  <= 3'b000;
			end
		7'b00011:
  		begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b10;
				sMuxB <=  2'b01;
				sAlu  <= 3'b000;
			end
		7'b00100:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=  2'b00;
				sMuxB <=  2'b00;
				sAlu  <= 3'b000;
			end
		7'b00101:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b00;
				sMuxB <=  2'b00;
				sAlu  <= 3'b000;
			end
		7'b00110:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=  2'b00;
				sMuxB <=  2'b01;
				sAlu  <= 3'b000;
			end
		7'b00111:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b11;
				sMuxB <=  2'b01;
				sAlu  <= 3'b000;
			end
		7'b01000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=  2'b00;
				sMuxB <=  2'b00;
				sAlu  <= 3'b001;
			end
		7'b01001: 
			begin
        lPC   <=      0;
        sMuxD <=      0;
        wDM   <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b00;
				sMuxB <=  2'b00;
				sAlu  <= 3'b001;
			end
		7'b01010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      1;
				lRegB <=      0;
				sMuxA <=  2'b00;
				sMuxB <=  2'b01;
				sAlu  <= 3'b001;
			end
		7'b01011:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
				lRegA <=      0;
				lRegB <=      1;
				sMuxA <=  2'b11;
				sMuxB <=  2'b01;
				sAlu  <= 3'b001;
			end
		7'b01100: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b010;
			end
		7'b01101: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b010;
			end
		7'b01110: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b010;
			end
		7'b01111:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b010;
			end
		7'b10000: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b011;
			end
		7'b10001: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b011;
			end
		7'b0010010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b011;
			end
		7'b0010011:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b011;
			end
		7'b0010100: 
			begin
			  lPC   <=      0;
			  wDM   <=      0;
			  sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
	   7'b0010101: 
			begin
         lPC   <=      0;
         wDM   <=      0;
         sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
		    sMuxA <=  2'b11;
		    sMuxB <=  2'b00;
		    sAlu  <= 3'b100;
			end
		7'b0010110: 
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
	   7'b0010111:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
		7'b0011000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;      
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b101;
			end
		7'b0011001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b101;
			end
		7'b0011010:
			begin
			  lPC   <=      0;
			  wDM   <=      0;
			  sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b101;
			end
		7'b0011011:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b101;
			end
		7'b0011100:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b110;
			end
		7'b0011101:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b110;
			end
		7'b0011110:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b110;
			end
		7'b0011111:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b01;
			  sAlu  <= 3'b110;
			end
		7'b0100000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
		7'b0100001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
		7'b0100010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
    7'b0100011:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b111;
			end
    7'b0100100:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b01;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b000;
			end
    7'b0100101:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b10;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0100110:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b10;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0100111:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b10;
			  sAlu  <= 3'b000;
			end
    7'b0101000:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b10;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b000;
			end
    7'b0101001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b10;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0101010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b10;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0101011:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      1;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b10;
			  sAlu  <= 3'b000;
			end
    7'b0101100:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0101101:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0101110:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b000;
			end
    7'b0101111:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b000;
			end
    7'b0110000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b001;
			end
    7'b0110001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b001;
			end
    7'b0110010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b001;
			end
    7'b0110011:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b001;
			end
    7'b0110100:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b010;
			end
    7'b0110101:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b010;
			end
    7'b0110110:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b010;
			end
    7'b0110111:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b010;
			end
    7'b0111000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b011;
			end
    7'b0111001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b011;
			end
    7'b0111010:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b011;
			end
    7'b0111011:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b011;
			end
    7'b0111100:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
    7'b0111101:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
    7'b0111110:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      1;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b100;
			end
    7'b0111111:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b101;
			end
    7'b1000000:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      1;
			  sMuxA <=  2'b11;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b101;
			end
    7'b1000001:
			begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      1;
			  lRegA <=      1;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b11;
			  sAlu  <= 3'b101;
			end
    7'b1000010:
			begin
        lPC   <=      0;
        wDM   <=      1;
        sMuxD <=      0;
			  lRegA <=      0;
			  lRegB <=      0;
			  sMuxA <=  2'b00;
			  sMuxB <=  2'b00;
			  sAlu  <= 3'b101;
			end
    7'b1000011:
    	begin
    		lPC   <=      0;
    		wDM   <=      1;
    		sMuxD <=      0;
    		lRegA <=      0;
    		lRegB <=      0;
    		sMuxA <=  2'b00;
    		sMuxB <=  2'b00;
    		sAlu  <= 3'b110;
    	end
    7'b1000100:
    	begin
    		lPC   <=      0;
    		wDM   <=      1;
    		sMuxD <=      0;
    		lRegA <=      0;
    		lRegB <=      0;
    		sMuxA <=  2'b11;
    		sMuxB <=  2'b00;
    		sAlu  <= 3'b110;
    	end
    
    7'b1000101:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 1;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b110;
    	end
    
    7'b1000110:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b111;
    	end
    
    7'b1000111:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b11;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b111;
    	end
    
    7'b1001000:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 1;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b111;
    	end
    
    7'b1001001:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b01;
    		sMuxB <= 2'b11;
    		sAlu <= 3'b000;
    	end
    
    7'b1001010:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 1;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b01;
    		sMuxB <= 2'b11;
    		sAlu <= 3'b000;
    	end
    
    7'b1001011:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b10;
    		sMuxB <= 2'b10;
    		sAlu <= 3'b000;
    	end
    
    7'b1001100:
    	begin
    		lPC <= 0;
    		wDM <= 1;
    		sMuxD <= 1;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b10;
    		sMuxB <= 2'b10;
    		sAlu <= 3'b000;
    	end
    
    7'b1001101:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    
    7'b1001110:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b01;
    		sAlu <= 3'b000;
    	end
    
    7'b1001111:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b11;
    		sMuxB <= 2'b01;
    		sAlu <= 3'b000;
    	end
    
    7'b1010000:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b11;
    		sAlu <= 3'b000;
    	end
    
    7'b1010001:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b11;
    		sMuxB <= 2'b11;
    		sAlu <= 3'b000;
    	end
    
    7'b1010010:
    	begin
    		lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 1;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b11;
    		sAlu <= 3'b000;
    	end
    
    7'b1010011:
    	begin
    		lPC   <= 1;
    		wDM   <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu  <= 3'b000;
    	end
    
    7'b1010100:
    	begin
    		if(dataRegS[3] == 1) lPC <= 1;
			else       lPC <= 0;
    		wDM   <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu  <= 3'b000;
    	end
    
    7'b1010101:
    	begin
    		if(dataRegS[3] == 0) lPC <= 1;
			else       lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    
    7'b1010110:
    	begin
    		if(dataRegS[2] == 0 && dataRegS[3] == 0) lPC <= 1;
			else                 lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    
    7'b1010111:
    	begin
    		if(dataRegS[2] == 1) lPC <= 1;
			else lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    
    7'b1011000:
    	begin
    		if(dataRegS[2] == 0) lPC <= 1;
			else lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    
    7'b1011001:
    	begin
    		if(dataRegS[2] == 1 || dataRegS[3] == 1) lPC <= 1;
			else lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    7'b1011010:// 
    	begin
    		if(dataRegS[1] == 1) lPC <= 1;
			else lPC <= 0;
    		wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end
    7'b1011011:// JOV Dir
    	begin
		   if(dataRegS[0] == 1) lPC <= 1;
			else lPC <= 0;			
			wDM <= 0;
    		sMuxD <= 0;
    		lRegA <= 0;
    		lRegB <= 0;
    		sMuxA <= 2'b00;
    		sMuxB <= 2'b00;
    		sAlu <= 3'b000;
    	end  
    default begin
        lPC   <=      0;
        wDM   <=      0;
        sMuxD <=      0;
			lRegA <=      1;
			lRegB <=      0;
			sMuxB <=  2'b00;
			sMuxA <=  2'b10;
			sAlu  <= 3'b000;
		end
	endcase
  end
endmodule