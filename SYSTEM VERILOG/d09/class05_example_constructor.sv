//class declaration
class sv_class;
  int x;
  string s; 
  
  //constructor function
  function new();
    x =1000;
    s="Hello";
  endfunction  
  
endclass
  
module sv_class_ex;
 sv_class class_1;				//Creating Handle
  
  initial begin
    class_1 = new();		  //Creating Object for the Handle
    
    $display("Default value : x = %0d",class_1.x);
    $display("Default value : s = %0s",class_1.s);
    
    class_1.x = 5;
    class_1.s = "Hi";    
    $display("after setting: Value of x = %0d",class_1.x);
    $display("after setting: Value of s = %0s",class_1.s);
        
  end
endmodule


// output
// # Default value : x = 1000
// # Default value : s = Hello
// # after setting: Value of x = 5
// # after setting: Value of s = Hi