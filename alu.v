`include "mul16.v"
`include "mux32three.v"
`include "adder32.hw.v"
`include "sub32.hw.v"
`include "and32.v"
`include "or32.v"
`include "not32.v"
`include "xor32.v"
`include "shift32.v"


module alu(r,a,b,f);
   input [31:0] a,b;
   input [2:0]	f;
   output [31:0] r;

   wire [31:0]	 diff;
   wire [31:0]	 prod;
   wire [31:0]	 ands,ors,nots,xors,shift;
   wire [31:0]	 sum;
 
   // End of automatics   
   adder our_adder(
		   // Outputs
		   .sum			(sum[31:0]),
		   // Inputs
		   .A			(a),
		   .B			(b));
   sub32hw our_subtracter(
			// Outputs
			.diff		(diff[31:0]),
			// Inputs
			.i0		(a),
			.i1		(b));
   mul16 our_mul(
		        .prod              (prod[31:0]),
		 
		        .i0		(a[15:0]),
              		.i1		(b[15:0]));
   and32  our_and(
			// Outputs
			.ands		(ands[31:0]),
			// Inputs
			.i0		(a[31:0]),
			.i1		(b[31:0]));
   or32  our_or(
			// Outputs
			.ors		(ors[31:0]),
			// Inputs
			.i0		(a[31:0]),
			.i1		(b[31:0]));
   not32  our_not(
			// Outputs
			.nots		(nots[31:0]),
			// Inputs
			.i0		(a[31:0]));
   xor32  our_xor(
			// Outputs
			.xors		(xors[31:0]),
			// Inputs
			.i0		(a[31:0]),
			.i1		(b[31:0]));
   shift32  our_shift(
			// Outputs
			.shift		(shift[31:0]),
			// Inputs
			.i0		(a[31:0]),
			.i1		(b[31:0]));
   eight  output_mux( // Outputs
			 .out			(r),
			 // Inputs
			 .i0			(sum),
			 .i1			(diff),
			 .i2			(prod),
			 .i3			(ands),
			 .i4			(ors),
			 .i5			(nots),
			 .i6			(xors),
		         .i7
       (shift),	      
			 .sel			(f[2:0]));
endmodule // alu
