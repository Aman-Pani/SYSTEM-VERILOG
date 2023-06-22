module string_datatype;
  //delaration
  shortint si;
  int i;
  longint li;
  byte by;
  logic l;
  reg r;
  integer ii;
  time t;
  real re;
  shortreal sre;
  string s1="hi";
  string s2={"hi"," ","bro"};
  
  initial begin
    $display("initial value of si  = %0d",si);
    $display("initial value of i   = %0d",i);
    $display("initial value of li  = %0d",li);
    $display("initial value of by  = %0d",by);
    $display("initial value of l   = %0d",l);
    $display("initial value of r   = %0d",r);
    $display("initial value of ii  = %0d",ii);
    $display("initial value of t   = %0d",t);
    $display("initial value of re  = %0d",re);
    $display("initial value of sre = %0d",sre);
    $display("initial value of s1  = %0s",s1);
    $display("initial value of s2  = %0s",s2);
  end
endmodule


//  output 

//  # initial value of si  = 0
//  # initial value of i   = 0
//  # initial value of li  = 0
//  # initial value of by  = 0
//  # initial value of l   = x
//  # initial value of r   = x
//  # initial value of ii  = x
//  # initial value of t   = x
//  # initial value of re  = 0
//  # initial value of sre = 0
//  # initial value of s1  = hi
//  # initial value of s2  = hi bro
