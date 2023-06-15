module mailbox_example();
  mailbox mb = new(2);
  int value;
  initial begin
    for(int i=0;i<10;i++)begin
      value = $urandom_range(1,50);
      #1
      mb.put(value);
      $display("%0t Put %0d data = %0d",$time,i, value); 
      #1
      mb.get(value);
      $display("%0t Get %0d data = %0d",$time,i, value);
    end
  end
endmodule


// output
//  1 Put 0 data = 39
//  2 Get 0 data = 39
//  3 Put 1 data = 11
//  4 Get 1 data = 11
//  5 Put 2 data = 24
//  6 Get 2 data = 24
//  7 Put 3 data = 21
//  8 Get 3 data = 21
//  9 Put 4 data = 8
// 10 Get 4 data = 8
// 11 Put 5 data = 2
// 12 Get 5 data = 2
// 13 Put 6 data = 47
// 14 Get 6 data = 47
// 15 Put 7 data = 4
// 16 Get 7 data = 4
// 17 Put 8 data = 23
// 18 Get 8 data = 23
// 19 Put 9 data = 8
// 20 Get 9 data = 8