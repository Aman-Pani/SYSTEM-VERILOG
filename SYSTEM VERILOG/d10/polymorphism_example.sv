class base;
  virtual function void display();
  $display("inside base class");
  endfunction
endclass

class child1 extends base;
  
  function void display();
    $display("inside child 1");
  endfunction
  
endclass

class child2 extends base;
  
  function void display();
    $display("inside child 2");
  endfunction
  
endclass

class child3 extends base;
  
  function void display();
    $display("inside child 3");
  endfunction
  
endclass


module tb;
  
  initial
    begin
      child1 c1=new();
      child2 c2=new();
      child3 c3=new();
      
      base b[3];//base class array ofhandle 
      
      //assigning extended class to base class
      b[0]=c1;
      b[1]=c2;
      b[2]=c3;
      
      //assigning extended class to base class
      b[0].display();
      b[1].display();
      b[2].display();
      
    end
endmodule


// output
// inside child 1
// inside child 2
// inside child 3