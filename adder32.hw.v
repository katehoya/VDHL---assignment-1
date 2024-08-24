`include "fulladder32.v"
module adder(A,B,sum);
   parameter n = 32;
   input [n-1:0] A;
   input [n-1:0] B;
   output [n-1:0] sum;
   wire [n:0]	 C;

   genvar	 i;

   generate
      for (i=0; i<n; i=i+1) begin:bit
	 fulladder add(.a(A[i]),.b(B[i]),.ci(C[i]),.co(C[i+1]),.r(sum[i]));
      end
      endgenerate

   assign C[0] = 1'b0;
   assign sum[n-1] = C[n];
endmodule // adder

	   
