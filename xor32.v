module xor32(/*AUTOARG*/
   // Outputs
   xors,
   // Inputs
   i0, i1
	     );

  input [31:0] i0,i1;
   output [31:0]     xors;

   assign xors = i0 ^ i1;
endmodule // xor32
