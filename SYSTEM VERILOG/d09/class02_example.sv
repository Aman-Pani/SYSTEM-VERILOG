class my_class;
  //class proporties. Variables
  int a,b,c;
  string s;
  
  //task
  task d_in(int i,j,k,string st);
    a = i;
    b = j;
    c = k;
    s = st;
  endtask
  
  //function
  function d_display();
    $display(": a = %0d",a);
    $display(": b = %0d",b);
    $display(": c = %0d",c);
    $display(": s = %0s",s);
  endfunction
  
endclass
  
module my_class_ex;
  my_class c1,c2,c3;  //Creating Handle
  
  initial begin
    c1 = new(); 
    c2 = new();
    c3 = new();
    
    $display("Before swaping");
    c1.a = 5;
    c1.b = 6;
    c1.c = 7;
    c1.s = "abc";
    $display("c1------");
    c1.d_display();
    
    c2.d_in(10,20,30,"qwe");
    $display("c2------");
    c2.d_display();
    
    $display("After swaping");
    c3 = c1;
    c1 = c2;
    c2 = c3;
    
    $display("c1------");
    c1.d_display();
    
    $display("c2------");
    c2.d_display();
    
  end
endmodule

//output
// Before swaping
// c1------
// : a = 5
// : b = 6
// : c = 7
// : s = abc
// c2------
// : a = 10
// : b = 20
// : c = 30
// : s = qwe
// After swaping
// c1------
// : a = 10
// : b = 20
// : c = 30
// : s = qwe
// c2------
// : a = 5
// : b = 6
// : c = 7
// : s = abc