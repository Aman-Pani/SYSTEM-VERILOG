class sample;
  int a;
  function disp();
    $display("I am in sample");
    a=20;
    $display("sample::a=%0d",a);
  endfunction
endclass
             
class parent;
  sample s=new();
  function disp();
    $display("I am in parent");
    s.a=10;
    $display("parent::a=%0d", s.a);
  endfunction
endclass
             
class child extends parent;
  function disp();
    super.disp();
    $display("I am in child");
  endfunction
endclass

module top;
  parent p=new();
  sample s=new();
  child c=new();
  
  initial begin
    s.disp();
    //p = c;
    p.disp();
    c.disp();
  end
endmodule


// output
// I am in sample
// sample::a=20
// I am in parent
// parent::a=10
// I am in parent
// parent::a=10
// I am in child