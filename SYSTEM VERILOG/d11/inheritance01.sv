class class_a;
  int a;
  function new();
    a = 10;
  endfunction
endclass

class class_b extends class_a;
  int b;
  function new();
    b = 20;
  endfunction
  
  function void display();
    $display("class_b b = %0d",b);
    $display("class_a a = %0d",a);
    $display("modifying the superclass");
    a = 13;
    $display("superclass a a = %0d",super.a);
  endfunction 
endclass

module inheritance;
  class_b b1 = new();
  initial begin 
    b1.display();
    $display("printing inside top");
    $display("values of b1.a = %0d and b1.b = %0d",b1.a,b1.b);
        
    b1.a = 15;
    b1.b = 25;
    $display("updated values b1.a = %0d and b1.b = %0d",b1.a,b1.b);
  end 
endmodule


// output
// class_b b = 20
// class_a a = 10
// modifying the superclass
// superclass a a = 13
// printing inside top
// values of b1.a = 13 and b1.b = 20
// updated values b1.a = 15 and b1.b = 25
