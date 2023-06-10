// Code your testbench here or browse Examples
module my_Tb;
  wire tc;
  reg ta,tb;
  nand_ my_tb(ta,tb,tc); 	//nand_ my_tb(.a(ta),.b(tb),.c(tc))
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("a=%d,b=%d,c=%d",ta,tb,tc);
    ta=1'b0;tb=1'b0;
    #5					//delay of 5 unit
    ta=1'b0;tb= 1'b1;
    #5
    ta=1'b1;tb=1'b0;
    #5
    ta=1'b1;tb=1'b1;
    #5
    $finish ;
  
  end
endmodule