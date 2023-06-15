//write a code to access the local property of a class from outside the class

class encap;
  int a;
  local int b;
  
  function void show(int b);
    this.b = b;
    $display("inside  b = %0d",this.b);
    a = b;
  endfunction
endclass

module tb;
  encap a1;
  initial begin
    a1 = new();
    a1.show(15);
    $display("outside b = %0d",a1.a);
  end
endmodule


// output
// inside  b = 15
// outside b = 15