module enum_dt;
  enum {red,green,blue,yellow,white,black}Colors;
  
  initial begin
    Colors=Colors.first;
    
    for(int i=0;i<6;i++)
      begin
        $display(" %d ,Colors :: Value of %0s \t is = %0d",i,Colors.name,Colors );
        Colors=Colors.next;
      end
  end
endmodule

// output


//    0 ,Colors :: Value of red 	   is = 0
//    1 ,Colors :: Value of green 	 is = 1
//    2 ,Colors :: Value of blue     is = 2
//    3 ,Colors :: Value of yellow       is = 3
//    4 ,Colors :: Value of white 	 is = 4
//    5 ,Colors :: Value of black 	 is = 5