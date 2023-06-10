module Dlatch_tb;
  reg d,clk,rst;
  wire q,qn,w1;
  d_latch dl(d,clk,rst,w1,q,qn);
  always #5clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,Dlatch_tb);
    {clk,rst,d}<=0;
    #10 rst<=1;d=0;
    #8  d=1;
    #8  d=0;
   	#8  d=1;
    #8  d=0;
    #2  rst=0;
    #8  d=1;
    #8  d=0;
    #2  rst=1;
    #8  d=1;
    #8  d=0;
    #2 $finish;
  end
endmodule