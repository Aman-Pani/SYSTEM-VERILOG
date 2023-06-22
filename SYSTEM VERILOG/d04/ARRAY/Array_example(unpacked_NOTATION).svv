module packed_and_unpacked_array_example;
  
  int A[1:7];
  int B[1:3];
  int C[4:1];
  int D[2:0];
  int E[2:0];
  int F[1:4];
  int G[1:4];
  
  initial begin 
    
    A = {1,2,3,4,5,6,7};
    B = A[5:7];
    C = A[1:4];
    D = A[4+:3]; // start from 4th index of A and display the next 3 elements
    E = A[4-:3];
    F = A[2+:4];
    G[1:3] = A[3:5];
    
    $display("display A");	//int A[1:7];	A = {1,2,3,4,5,6,7};
    foreach(A[i]) $display("\t A[%0d] = %0d",i,A[i]);
//     display A
// 	 A[1] = 1
// 	 A[2] = 2
// 	 A[3] = 3
// 	 A[4] = 4
// 	 A[5] = 5
// 	 A[6] = 6
// 	 A[7] = 7
    
    $display("display B");	//int B[1:3];	B = A[5:7];
    foreach(B[i]) $display("\t B[%0d] = %0d",i,B[i]);
//     display B
// 	 B[1] = 5
// 	 B[2] = 6
// 	 B[3] = 7
        
    $display("display c");	//int C[4:1];	C = A[1:4];
    foreach(C[i]) $display("\t C[%0d] = %0d",i,C[i]);
//     display c
// 	 C[4] = 1
// 	 C[3] = 2
// 	 C[2] = 3
// 	 C[1] = 4
        
    $display("display D");	//int D[2:0];	D = A[4+:3];
    foreach(D[i]) $display("\t D[%0d] = %0d",i,D[i]);
//     display D
// 	 D[2] = 4
// 	 D[1] = 5
// 	 D[0] = 6
        
    $display("display E");	//int E[2:0];	E = A[4-:3];
    foreach(E[i]) $display("\t E[%0d] = %0d",i,E[i]);
//     display E
// 	 E[2] = 2
// 	 E[1] = 3
// 	 E[0] = 4
        
    $display("display F");	//int F[1:4];	F = A[2+:4];
    foreach(F[i]) $display("\t F[%0d] = %0d",i,F[i]);
//     display F
// 	 F[1] = 2
// 	 F[2] = 3
// 	 F[3] = 4
// 	 F[4] = 5
        
    $display("display G");	//int G[1:4];	G[1:3] = A[3:5];
    foreach(G[i]) $display("\t G[%0d] = %0d",i,G[i]);
//     display G
// 	 G[1] = 3
// 	 G[2] = 4
// 	 G[3] = 5
// 	 G[4] = 0
    
  end
endmodule
    
    
    
    
    
    
    
    
    
    
