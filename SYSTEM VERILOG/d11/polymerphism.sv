//base class
class base;
  virtual function void display();
    $display("in base");
  endfunction
endclass

//extended class 1
class class_1 extends base;
  function void display();
    $display("in extended class_1");
  endfunction
endclass

//extended class 2
class class_2 extends base;
  function void display();
    $display("in extended class_2");
  endfunction
endclass

//extended class 3
class class_3 extends base;
  function void display();
    $display("in extended class_3");
  endfunction
endclass

module class_polymerphism;
  initial begin
    class_1 c1 = new();
    class_2 c2 = new();
    class_3 c3 = new();
    
    c1.display();
    c2.display();
    c3.display();
  end
endmodule


// output
// in extended class_1
// in extended class_2
// in extended class_3