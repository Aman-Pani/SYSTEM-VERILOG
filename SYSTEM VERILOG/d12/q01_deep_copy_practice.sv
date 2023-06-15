class student;
  int rn;
  
  function new();
    rn = 10;
  endfunction
  
  function student copy;
    copy = new();
    copy.rn = this.rn;
    return copy;
  endfunction
endclass

class college;
  int code;
  student st;
  
  function new();
    code = 20;
    st = new();
  endfunction
  
  function college copy;
    copy = new();
    copy.code = this.code;
    copy.st = st.copy;
    return copy;
  endfunction
  
  function void display();
    $display("student rn = %0d \ncollege code = %0d", st.rn,code);
  endfunction
endclass

module deep_copy_tb;
  college c1,c2;
  initial begin 
    c1 = new();
    $display("priting the values of c1 object : ");
    c1.display();
    
    c2 = c1.copy;
    $display("priting the values of c2 object : ");
    c2.display();
    
    //  updating values
    c2.code = 200;
    c2.st.rn = 100;
    $display("after performing deep copy the values :");
    $display("displaying c1 object :");
    c1.display();
    
    $display("displaying c2 object :");
    c2.display();
  end
endmodule


// output
//  priting the values of c1 object : 
//  student rn = 10 
//  college code = 20

//  priting the values of c2 object : 
//  student rn = 10 
//  college code = 20

//  after performing deep copy the values :
//  displaying c1 object :
//  student rn = 10 
//  college code = 20

//  displaying c2 object :
//  student rn = 100 
//  college code = 200
    