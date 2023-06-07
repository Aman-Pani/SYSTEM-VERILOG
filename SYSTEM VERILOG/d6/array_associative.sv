module tb;
  int arr[int];
  integer i;
  
  initial begin
    repeat (20) begin
      i = $urandom_range(100,200);
      arr[i] = $urandom_range(500,600);
      $display("array[%0p] = %0p ",i,arr[i]);
    end
  end
endmodule


//output
// array[103] = 541 
// array[181] = 500 
// array[200] = 530 
// array[173] = 519 
// array[152] = 560 
// array[112] = 583 
// array[104] = 572 
// array[130] = 575 
// array[154] = 500 
// array[109] = 501 
// array[184] = 520 
// array[197] = 555 
// array[100] = 587 
// array[172] = 538 
// array[138] = 565 
// array[136] = 546 
// array[139] = 580 
// array[107] = 523 
// array[123] = 587 
// array[108] = 520 