module fulladder(a,b,ci,r,co);
   input a,b,ci;
   output r,co;

   assign r = a^b^ci;
   assign co = a&ci|a&b|b&ci;

endmodule // fulladder
