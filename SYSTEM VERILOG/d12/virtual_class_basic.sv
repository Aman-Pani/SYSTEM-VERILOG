//class declaration
virtual class packet;
  //class properties
  bit [3:0]addr;
  bit [7:0]data;
endclass

module test;
  //Here pkt is the handle of class packet
  packet pkt;
  initial begin
    //Initialization of class 
    pkt=new();
    //assigning value through the handle
    pkt.addr=4'hA;
    pkt.data=8'hA_B;
    $display(" ADDR:%0d\n DATA:%0d",pkt.addr,pkt.data);
  end
endmodule