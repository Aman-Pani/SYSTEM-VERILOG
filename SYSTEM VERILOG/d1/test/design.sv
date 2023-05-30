// Code your design here
module nand_(a,b,c);
  input a,b;
  output c;
  assign c=~(a & b);
endmodule