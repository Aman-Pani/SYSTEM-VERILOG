class packet;
  rand  bit [3:0] addr;

  constraint addr_range { addr > 5; addr < 10;}
endclass

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