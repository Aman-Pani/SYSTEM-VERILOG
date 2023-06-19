class packet;
  rand bit [3:0] addr;
  rand bit [3:0] data;

  constraint data_range { data > 0;
                          data < 10; }
endclass

module inline_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(2) begin
      pkt.randomize() with { addr == 8;};
      $display("\taddr = %0d data = %0d",pkt.addr,pkt.data);
    end
  end
endmodule

// output

// with  ' with { addr == 8;}; '
// 	addr = 8 data = 2
// 	addr = 8 data = 3

// without ' with { addr == 8;}; '
// 	addr = 9  data = 2
// 	addr = 11 data = 3