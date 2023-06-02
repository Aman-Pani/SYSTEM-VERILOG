module array_2d;
  int array3[0:2][0:3];
  initial begin
    array3 = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
    $display(".......Displaying Array3.......");
//     foreach (array3[i,j])
//     $display("\t array3[%0d][%0d] = %0d",i,j,array3[i][j]);
    for (int i=0;i<=2;i++)
      begin
        for (int j=0;j<=3;j++)
          $write("\t %0d",array3[i][j]);
          $display(" ");
      end
  end
endmodule

// output
// .......Displaying Array3.......
// 	 0	 1	 2	 3 
// 	 4	 5	 6	 7 
// 	 8	 9	 10	 11 