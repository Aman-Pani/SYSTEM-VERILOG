class parent;
  
  int account_no;
  int amount;
  string name;
  int age;
  
  function new();
    
    account_no = 100234765;
    amount = 5000000;
    name = "MUKESH";
    age = 43;
    
  endfunction
  
  function display();
    
    $display("account_no = %0d",account_no);
    $display("amount = %0d",amount);
    $display("name = %0s",name);
    $display("age = %0d",age);
    
  endfunction
  
endclass

class child extends parent;
  
  int age;
  int code;
  int roll_no;
  
  function new();
    
    age = 10;
    code = 101;
    roll_no = 34;
    
  endfunction
  
  function d_display();
    
    $display("age in the child class : %0d",age);
    $display("code : %0d",code);
    $display("roll_no : %0d",roll_no);
    $display("age in the parent class : %0d",super.age);
    
  endfunction
  
endclass

module tb;
  
  child c1 = new();
  
  initial begin
    
    c1.d_display();
    $display("modifying the parent property through child handle");
    
    c1.age = 69;
    c1.display();
    
  end
  
endmodule


// output
// age in the child class : 10
// code : 101
// roll_no : 34
// age in the parent class : 43
// modifying the parent property through child handle
// account_no = 100234765
// amount = 5000000
// name = MUKESH
// age = 43
