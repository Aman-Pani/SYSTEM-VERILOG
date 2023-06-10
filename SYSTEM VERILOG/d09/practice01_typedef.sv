// write a typedef structure with these : bit vaild; bit ready; bit [31:0]addr; bit [64:0] data; . Now display them one by one by modifying each variables,take 2 instances in the above structure.

module tb;
  typedef struct{
    bit valid; 
    bit ready; 
    bit [31:0]addr; 
    bit [64:0] data;
  }id;
  id id1;
  id id2;
  
  initial begin
    id1.valid = 1;
    id1.ready = 0;
    id1.addr = 12345678;
    id1.data = 1234567890;
    
    id2.valid = 0;
    id2.ready = 1;
    id2.addr = 87654321;
    id2.data = 0987654321;
    
    $display("id1.valid = %0b", id1.valid);
    $display("id1.ready = %0b", id1.ready);
    $display("id1.addr = %0d", id1.addr);
    $display("id1.data = %0d", id1.data);
    
    $display("id2.valid = %0b", id2.valid);
    $display("id2.ready = %0b", id2.ready);
    $display("id2.addr = %0d", id2.addr);
    $display("id2.data = %0d", id2.data);
  end
endmodule
  

//output
// id1.valid = 1
// id1.ready = 0
// id1.addr = 12345678
// id1.data = 1234567890
// id2.valid = 0
// id2.ready = 1
// id2.addr = 87654321
// id2.data = 987654321