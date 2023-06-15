//Write a piece of code With the scenario having multiple child classes and try to override the existing parent method. (Note:Method Overriding means to override a method With same name same argument but different class (overloading is not in practice in SV) (polymorphism)

//add extra behaviour in the existing parent method through child class

class parent;
  int x=3,y=5,s,m;
  function void multiply();
    m=x*y;
    $display("multiplication of x=%0d & y=%0d is m=%0d",x,y,m);
  endfunction
endclass

class child extends parent;
  function void extra();
    super.multiply();
    s=m-y;
    $display("substraction   of m=%0d & y=%0d is s=%0d",m,y,s);
  endfunction
endclass

module tb;
  parent pa1 = new();
  child  ch1 = new();
  initial begin
    $display("child");
    ch1.extra();
    $display("parent");
    pa1.multiply();
  end
endmodule


// output
//  child
//  multiplication of x=3 & y=5 is m=15
//  substraction   of m=15 & y=5 is s=10
//  parent
//  multiplication of x=3 & y=5 is m=15