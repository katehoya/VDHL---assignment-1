module not32(/*AUTOARG*/
   // Outputs
   nots,
   // Inputs
   i0
	     );

  input [31:0] i0;
   output [31:0] nots;

   assign nots = ~i0;
endmodule // not32
