class class_a;
  int a;
  
  function new();
    a = 10;
  endfunction
endclass

class class_b;
  int b;        // predefined data type
  class_a ca;   // other class object
  
  function new();
    b = 20;
    ca = new();
  endfunction
  
  function void display();
    $display("class_a a = %0d \nclass_b b = %0d",ca.a,b);
  endfunction
endclass

module class_assignment;
  class_b b1,b2;
  initial begin
    b1 = new();
    $display("****calling b1 display");
    b1.display();
    
    b2 = new b1;    //***************************
    $display("****calling b2 display");
    b2.display();
    
    //changing values of b2 handle
    b2.b = 22;
    b2.ca.a = 11;
    
    $display("****calling b1 display after changing b2 ");
    b1.display();
    
    $display("****calling b2 display after changing b2 ");
    b2.display();
  end
endmodule
    

// output
// ****calling b1 display
// class_a a = 10 
// class_b b = 20

// ****calling b2 display
// class_a a = 10 
// class_b b = 20

// ****calling b1 display after changing b2 
// class_a a = 11 
// class_b b = 20

// ****calling b2 display after changing b2 
// class_a a = 11 
// class_b b = 22