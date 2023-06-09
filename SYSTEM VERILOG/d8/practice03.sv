//write code to decelare a associatie array with size 10 ,with index  0,3,6,9... ,data range is 100 to 200 . Display the array showing the in .
module top;
  int  a[*];
  int  in;
  
  initial begin
   for(int i=0; i<10; i++) begin
      in = i*3;
      a[in]=$urandom_range(100,200);
      $display("a[%0d]=%p",in, a[in]);
    end
    $display("a=%p", a);
  end    
endmodule


//output
// a[0]=        103
// a[3]=        141
// a[6]=        181
// a[9]=        100
// a[12]=        200
// a[15]=        130
// a[18]=        173
// a[21]=        119
// a[24]=        152
// a[27]=        160
// a='{0x0:103, 0x3:141, 0x6:181, 0x9:100, 0xc:200, 0xf:130, 0x12:173, 0x15:119, 0x18:152, 0x1b:160} 
