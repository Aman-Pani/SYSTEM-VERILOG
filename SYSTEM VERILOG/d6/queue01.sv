module tb;
  int q[$];
  int a,b;
  initial begin
    repeat (10) begin 
      a = $urandom_range(10,30);
      q.push_back(a);
    end
    repeat (q.size())begin 
      b = q.pop_front();
      $display(b);
    end
  end
endmodule

//output
//      12
//      29
//      26
//      28
//      10
//      22
//      13
//      19
//      14
//      26