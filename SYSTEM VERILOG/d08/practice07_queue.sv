// write a logic to insert a queue array to another queue array front side reverse manner

module queue_insert_testbench;

  int q1[$];
  int q2[$];
  int temp,a_s;

  initial begin
    q1 = {1,2,3};
    q2 = {11,22,33};
    $display("q1=%0p",q1);
    $display("q2=%0p",q2);
    $display("inserting a queue to another queue front side reverse manner");
    a_s = q1.size();
    for(int i=0;i<a_s;i++)begin
      temp = q1.pop_front();
      q2.push_front(temp);
    end
    $display("q2=%0p",q2);
  end

endmodule


//output
// q1='{1, 2, 3} 
// q2='{11, 22, 33} 
// inserting a queue to another queue front side reverse manner
// q2='{3, 2, 1, 11, 22, 33} 