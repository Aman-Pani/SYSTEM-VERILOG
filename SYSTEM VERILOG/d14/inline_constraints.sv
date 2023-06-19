class packet;
  rand bit [3:0] addr;
endclass

module inline_constr;
  initial begin
    packet pkt;
    pkt = new();

    repeat(2) begin
      pkt.randomize() with { addr == 8;};
      $display("\taddr = %0d",pkt.addr);
    end
  end
endmodule


// output

// with  ' with { addr == 8;}; '
// 	addr = 8
// 	addr = 8

// without ' with { addr == 8;}; '
// 	addr = 9
// 	addr = 11