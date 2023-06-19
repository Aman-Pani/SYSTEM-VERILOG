class packet;
  rand  bit [3:0] addr;
  
// constraint block declaration
  constraint addr_range ;
endclass

// constraint implementation outside class body
constraint packet::addr_range { addr > 5; addr < 10;}

module constr_blocks;
  initial begin
    packet pkt;
    pkt = new();
   repeat(10) begin
      pkt.randomize();
      $display("addr = %0d",pkt.addr);
    end
  end
endmodule


// output
// addr = 8
// addr = 8
// addr = 6
// addr = 6
// addr = 9
// addr = 9
// addr = 7
// addr = 6
// addr = 9
// addr = 7