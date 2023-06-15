class parent;
  bit [31:0] addr;
  function display();
    $display("addr = %0d", addr);
  endfunction
endclass

class child extends parent;
  bit [31:0] data;
  function display();
    super.display();
    $display("data = %0d", data);
  endfunction
endclass

module tb;
  parent p ;
  child  c = new();  //memory allocation
  child  c1;
  initial begin
    c.addr = 10;
    c.data = 20;
    p = c;         //p is pointing to child class handle c.
    $cast(c1,p);   //with the use of $cast, type check will occur during runtime

    c1.display();
  end
endmodule
  


// output
//  addr = 10
//  data = 20