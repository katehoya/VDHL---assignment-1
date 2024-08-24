module or32(/*AUTOARG*/
   // Outputs
   ors,
   // Inputs
   i0, i1
   );
   input [31:0] i0,i1;
   output [31:0] ors;

   assign ors = i0 | i1;
endmodule // or32
