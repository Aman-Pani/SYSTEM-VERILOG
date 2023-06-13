// Code your testbench here
// or browse Examples
`include "p.sv"
`include "c.sv"
module top;
  //parent p=new();
  child pkt1;
  child pkt2;
  initial begin
    pkt1=new();
    pkt2=new();
    $display("\t#######displatyng pkt 1###############");
    pkt1.print();
    $display("\t#######displaying pkt 2###############");
    pkt1.print();
    pkt2=pkt1.copy();
    pkt2.print();

    
    pkt2.data3=3225;
    pkt1.p.data1=500;
    pkt1.p.data2=1000;
    $display("\t#######displaying pkt 1 after change in pkt 2###############");
    pkt1.print();
    $display("\t#######displaying pkt 2 after change in pkt 2###############");
    pkt2.print();
    
    
    /*pkt2.data3=1500;
    pkt2.data4=2000;
    $display("\t#######displaying pkt 1 after change in pkt 1###############");
    pkt1.print();
    $display("\t#######displaying pkt 2 after change in pkt 1###############");
    pkt2.print();
*/  end
endmodule