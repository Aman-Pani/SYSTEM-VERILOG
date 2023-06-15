//Write a piece of code With the scenario having multiple child classes and try to override the existing parent method. (Note:Method Overriding means to override a method With same name same argument but different class (overloading is not in practice in SV) (polymorphism)

class parent;
  function display();
    $display("in parent");
  endfunction
endclass

class child1 extends parent;
  function display();
    $display("in child1");
  endfunction
endclass

class child2 extends parent;
  function display();
    $display("in child2");
  endfunction
endclass

module tb;
  parent pa1 = new();
  child1 ch1 = new();
  child2 ch2 = new();
  initial begin
    pa1.display();
    ch1.display();
    ch2.display();
    pa1 = ch1;
    pa1.display();
  end
endmodule


//  output
//  in parent
//  in child1
//  in child2
//  in parent