// write a logic to insert a queue array to another queue array front side

module queue_insert_testbench;

  int q1[$];
  int q2[$];
  int temp,a_s;

  initial begin
    q1 = {1,2,3};
    q2 = {11,22,33};
    $display("q1=%0p",q1);
    $display("q2=%0p",q2);
    $display("after inserting a queue array to another queue array front side");
    a_s = q1.size();
    for(int i=0;i<a_s;i++)begin
      temp = q1.pop_back();
      q2.push_front(temp);
    end
    $display("q2=%0p",q2);
  end

endmodule


//output
// q1='{1, 2, 3} 
// q2='{11, 22, 33} 
// after inserting a queue array to another queue array front side
// q2='{1, 2, 3, 11, 22, 33} 