class sample;
  virtual function print(); 
    $display("I m in Sample");
  endfunction
endclass

class parent extends sample;
  virtual function print();
    $display("I m in Parent");
  endfunction
endclass

class child extends parent;
  virtual function print();
    $display("I m in Child");
  endfunction
endclass

module top;
  sample s = new();
  parent p = new();
  child c = new();
  initial begin
    s.print();
    p = c;	 //virtual function allows extended class handles to be assigned to base class handles
    p.print();
    c.print();
  end
endmodule



// output

// with-out virtual function
//    I m in Sample
//    I m in Parent
//    I m in Child
  
// with virtual function
//    I m in Sample
//    I m in Child
//    I m in Child