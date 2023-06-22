module fixefsize_array;
  int arr1[6];   //int arr1[0:5];
  int arr2[5:0];
  int arr3[2:0][3:0];
  int arr4[4:0];
  
  initial begin
    arr1='{0,1,2,3,4,5};
    arr2='{0,1,2,3,4,5};
    arr3='{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
    
    $display("------display array 1-------");
    foreach(arr1[i])
      $display("\t arr1[%0d] = %0d",i,arr1[i]);
    // ------display array 1-------
// # 	 arr1[0] = 0
// # 	 arr1[1] = 1
// # 	 arr1[2] = 2
// # 	 arr1[3] = 3
// # 	 arr1[4] = 4
// # 	 arr1[5] = 5
    
    $display("------display array 2-------");
    for(int i=0;i<6;i++)
      $display("\t arr2[%0d] = %0d",i,arr2[i]);
    // # ------display array 2-------
// # 	 arr2[0] = 5
// # 	 arr2[1] = 4
// # 	 arr2[2] = 3
// # 	 arr2[3] = 2
// # 	 arr2[4] = 1
// # 	 arr2[5] = 0
    
    $display("------display array 2-------");
    foreach(arr2[i])
      $display("\t arr2[%0d] = %0d",i,arr2[i]);
    // # ------display array 2-------
// # 	 arr2[5] = 0
// # 	 arr2[4] = 1
// # 	 arr2[3] = 2
// # 	 arr2[2] = 3
// # 	 arr2[1] = 4
// # 	 arr2[0] = 5
    
    $display("------display array 3-------");
    foreach(arr3[i,j])
      $display("\t arr3[%0d][%0d] = %0d",i,j,arr3[i][j]);
    // # ------display array 3-------
// # 	 arr3[2][3] = 0
// # 	 arr3[2][2] = 1
// # 	 arr3[2][1] = 2
// # 	 arr3[2][0] = 3
// # 	 arr3[1][3] = 4
// # 	 arr3[1][2] = 5
// # 	 arr3[1][1] = 6
// # 	 arr3[1][0] = 7
// # 	 arr3[0][3] = 8
// # 	 arr3[0][2] = 9
// # 	 arr3[0][1] = 10
// # 	 arr3[0][0] = 11
    
    $display("------display array 4-------");
    foreach(arr4[i])
      $display("\t arr4[%0d] = %0d",i,arr4[i]);
    // # ------display array 4-------
// # 	 arr4[4] = 0
// # 	 arr4[3] = 0
// # 	 arr4[2] = 0
// # 	 arr4[1] = 0
// # 	 arr4[0] = 0
    
  end
endmodule
  
