module struct_tb;
  
  typedef enum logic
  {invalid_pkt,valid_pkt}pkt_type;
  
  typedef struct packed{
    bit [7:0] addr;
    pkt_type valid;
    bit [31:0] data;
  }mem_pkt;
  
  mem_pkt pkt;
  
  initial begin 
    //  initializing Struct
    pkt = '{8'h6, valid_pkt, 32'hc001_0fab};
    $display("pkt = %p",pkt);
    
    pkt.addr = 8'h8;
    $display("pkt.addr = %h",pkt.addr);
    $display("pkt = %p",pkt);
    
    pkt.valid = invalid_pkt;
    //$display("pkt.valid = %s",pkt.valid);
    $display("pkt = %p",pkt);
    
  end
endmodule

// output

// pkt = '{addr:'h6, valid:valid_pkt, data:'hc0010fab}
// pkt.addr = 08
// pkt = '{addr:'h8, valid:valid_pkt, data:'hc0010fab}
// pkt = '{addr:'h8, valid:invalid_pkt, data:'hc0010fab}
