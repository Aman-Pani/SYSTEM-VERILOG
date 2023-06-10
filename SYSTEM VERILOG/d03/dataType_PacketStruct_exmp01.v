module struct_tb;
  
  typedef struct packed{
    bit [7:0] addr;
    bit valid;
    bit [31:0] data;
  }mem_pkt;
  
  mem_pkt pkt;
  
  initial begin 
    //  initializing Struct
    pkt = '{8'h6, 1'b1, 32'hc001_0fab};
    $display("pkt = %p",pkt);
    
    pkt.addr = 8'h18;
    $display("pkt.addr = %h",pkt.addr);
    $display("pkt = %p",pkt);
    
    pkt.data = 32'hfff0_0fff;
    $display("pkt.data = %h",pkt.data);
    $display("pkt = %p",pkt);
    
  end
endmodule


// output

// pkt = '{addr:'h6, valid:'h1, data:'hc0010fab}
// pkt.addr = 18
// pkt = '{addr:'h18, valid:'h1, data:'hc0010fab}
// pkt.data = fff00fff
// pkt = '{addr:'h18, valid:'h1, data:'hfff00fff}