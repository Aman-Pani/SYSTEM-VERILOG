class parent;
  int a;
  
  function display();
    $display("In parent : a = %0d",a);
  endfunction
endclass

class child extends parent;
  int b;
  
  function display();
    $display("In child  : b = %0d",b);
    super.display();
  endfunction
endclass
  
module inheritence;
  initial begin
    child c = new();
    c.a = 10;
    c.b = 20;
    c.display();
  end
endmodule


// output
// In child  : b = 20
// In parent : a = 10