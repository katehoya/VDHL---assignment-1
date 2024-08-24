`timescale 1ns/1ns
`include "alu.v"


module alu_tb;
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [31:0]      r;         // From i0 of alu.v
   // End of automatics
   reg	[31:0]	    a,b;
   reg	[2:0]	f;


   alu i0 (
	   // Outputs
	   .r            (r[31:0]),
	   // Inputs
	   .a            (a[31:0]),
	   .b            (b[31:0]),
	   .f            (f[2:0]));

   initial
     begin
	$dumpfile ("alu.tb.vcd");
	$dumpvars (0,alu_tb);

	a=2;
	b=1;
	f=0;

	
	#10 f=1;
	#10 f=2;
	#10 b=2;
	#10 a=4;
/*	#10 f=3;
	#10 f=4;
	#10 f=5;
	#10 f=6;
	#10 f=7;*/
	#10 $finish;
     end // initial begin
endmodule // alu_tb
 
