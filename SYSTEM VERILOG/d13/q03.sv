//write a super class having a method where user will ask the testcase writer to mandatorily override the behaviour of the method from the super class .

virtual class super_c;
  bit [31:0] data;
  virtual function display();

  endfunction 
endclass

class sub_c_1 extends super_c; 
  function display();
    $display("Inside sub_c 1 value of data = %0d",data);   
  endfunction 
endclass

class sub_c_2 extends super_c;
  function display();
    $display("Inside sub_c 2 value of data = %0d",data);
  endfunction
endclass

module task_3_tb;
  sub_c_1 s1 = new();
  sub_c_2 s2 = new();
  
  initial begin 
    s1.data = 100;
    s2.data = 200;
    
    $display("***displaying 1st sub class");
    s1.display();
    
    $display("***displaying 2nd sub class");
    s2.display();
    
  end
endmodule


// output
// # ***displaying 1st sub class
// # Inside sub_c 1 value of data = 100
// # ***displaying 2nd sub class
// # Inside sub_c 2 value of data = 200