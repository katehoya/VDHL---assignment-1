
`include "fulladder33.v"
module sub32hw(i0,i1,diff);
   parameter n=32;
   input [n-1:0] i0;
   input [n-1:0] i1;
   wire [n-1]	 i2;
   output [n-1:0] diff;
   wire [n:0]	  c;

   assign i2 = (~i1+1);

   genvar	  i;

   generate
      for(i=0; i<n; i=i+1) begin:bit
	 fulladder2 add(.a(i0[i]),.b(i2[i]),.ci(c[i]),.co(c[i+1]),.r(diff[i]));
      end
      endgenerate

   assign c[0] = 1'b0;
   assign diff[n-1] = c[n];
   
  
   
endmodule // sub32hw
 
