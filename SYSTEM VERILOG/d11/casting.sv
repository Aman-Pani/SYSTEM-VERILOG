module casting;
  
  real r_a;
  int  i_a;
  string str;
  int x = 10;
  time t;
  
  initial begin
    
    r_a = (2.1 * 3.2); 
    //real to integer conversion
    i_a = int'(2.1 * 3.2); //or i_a = int'(r_a);
    
    #5;
    $display("%0t real value is %0f",$realtime,r_a);
    #5;
    $display("%0t int value is %0d",$realtime,i_a);
    #5
    $sformat(x,str);
    $display("%0t int value is %0d",$realtime,str);
  end
endmodule


// output
// 5 real value is 6.720000
// 10 int value is 7