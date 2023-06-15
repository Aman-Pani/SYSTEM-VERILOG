//abstract class
virtual class packet;
  bit [31:0] addr=30;
  
  function display;
    $display("this is abstract class");
  endfunction
endclass
 
class extended_packet extends packet;
  function void display;
    super.display;
    $display("Value of addr is %0d", addr);
  endfunction
endclass
 
module virtual_class;
  initial begin
    extended_packet p;
    p = new();
    p.addr = 10;
    p.display();
  end
endmodule


// output

// without line 21
// this is abstract class
// Value of addr is 30

// with line 21
// this is abstract class
// Value of addr is 10