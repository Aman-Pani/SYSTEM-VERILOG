class packet #(parameter int addr_width = 32, data_width = 32);
  
  bit [addr_width-1:0] address;
  bit [data_width-1:0] data;
  
  function new();
    address = 10;
    data = 22;  
  endfunction
  
endclass

module tb;
  packet #(32,64) pkt;
  initial begin
    pkt = new();
    $display("address = %0d and data = %0d",pkt.address,pkt.data);
  end
endmodule

// output
// address = 10 and data = 22