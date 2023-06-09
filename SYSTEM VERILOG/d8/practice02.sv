//write code to decelare a associatie array with size 10 ,index with in range 0 to 100 ,data range is 100 to 200 . Display the array showing the in .

module top;
  int  a[*];
  int  in;
  
  initial begin
   for(int i=0; i<10; i++) begin
      in = $urandom % 100;
      a[in]=$urandom_range(100,200);
      $display("a[%0d]=%p",in, a[in]);
    end
    $display("a=%p", a);
  end    
endmodule


//output
// a[38]=        141
// a[73]=        100
// a[7]=        130
// a[96]=        119
// a[22]=        160
// a[81]=        183
// a[78]=        172
// a[57]=        175
// a[74]=        100
// a[32]=        101
// a='{0x7:130, 0x16:160, 0x20:101, 0x26:141, 0x39:175, 0x49:100, 0x4a:100, 0x4e:172, 0x51:183, 0x60:119} 