class packet;
  rand  bit [3:0] addr1,addr2,addr3,addr4,addr5;

  constraint addr_range1 { addr1 > 5; }
  constraint addr_range2 { addr2 > 5; addr2 < 10;}
  constraint addr_range3 { addr3 inside { [5:10] }; }
  constraint addr_range4 { addr4 inside { 1,3,5,7,9 }; }
  constraint addr_range5 { addr5 inside { 1,3,[5:10],12,[13:15] }; }

endclass

module constr_blocks;
  initial begin
    packet pkt;
    pkt = new();
   repeat(10) begin
      pkt.randomize();
     $display("addr1 = %0d \taddr2 = %0d\taddr3 = %0d \taddr4 = %0d \taddr5 = %0d",pkt.addr1,pkt.addr2,pkt.addr3,pkt.addr4,pkt.addr5);
    end
  end
endmodule


// output
// addr1 = 12 	addr2 = 8	addr3 = 7 	addr4 = 3 	addr5 = 1
// addr1 = 10 	addr2 = 8	addr3 = 9 	addr4 = 9 	addr5 = 7
// addr1 = 11 	addr2 = 6	addr3 = 8 	addr4 = 7 	addr5 = 10
// addr1 = 10 	addr2 = 9	addr3 = 10 	addr4 = 3 	addr5 = 12
// addr1 = 7 	addr2 = 6	addr3 = 8 	addr4 = 7 	addr5 = 15
// addr1 = 10 	addr2 = 9	addr3 = 9 	addr4 = 7 	addr5 = 6
// addr1 = 9 	addr2 = 6	addr3 = 7 	addr4 = 5 	addr5 = 5
// addr1 = 10 	addr2 = 6	addr3 = 7 	addr4 = 7 	addr5 = 8
// addr1 = 7 	addr2 = 7	addr3 = 9 	addr4 = 5 	addr5 = 13
// addr1 = 11 	addr2 = 6	addr3 = 10 	addr4 = 7 	addr5 = 5