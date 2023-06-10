class my_class;
  
  int a,b,c;
  string s;
  
  function new();
    $display("object created:");
    a = 10;
    b = 20;
    c = 30;
    s = "Hello";
    
  endfunction
  
  function d_display();
    
    $display("default value of a = %0d",a);
    $display("default value of b = %0d",b);
    $display("default value of c = %0d",c);
    $display("default value of s = %0s",s);
    
  endfunction
  
endclass


module class_3_tb;
  
  my_class c1 = new();
//   my_class c2 = new();
  
  initial begin
    
     //CALLING THE DISPLAY METHOD
  
 	 c1.d_display();
    
  end
  
endmodule
  
 
// output
//  object created:
//  default value of a = 10
//  default value of b = 20
//  default value of c = 30
//  default value of s = Hello
    