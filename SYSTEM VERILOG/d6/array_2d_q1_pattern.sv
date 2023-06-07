// write a piece of code to make a 2d array to generate bellow pattern 
// 1 2 3 4 5
// 2 3 4 5 6
// 3 4 5 6 7
// 4 5 6 7 8
// 5 6 7 8 9    

module array_2d;
  int array3[0:4][0:4];
  initial begin    
    // value assignment
    for (int i=0;i<=4;i++)
      begin
        for (int j=0;j<=4;j++)
          array3[i][j] = i+j+1;
      end
    // display
    for (int i=0;i<=4;i++)
      begin
        for (int j=0;j<=4;j++)
          $write("\t %0d",array3[i][j]);
          $display(" ");
      end
  end
endmodule



// output
// 	 1	 2	 3	 4	 5 
// 	 2	 3	 4	 5	 6 
// 	 3	 4	 5	 6	 7 
// 	 4	 5	 6	 7	 8 
// 	 5	 6	 7	 8	 9 