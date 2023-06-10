// write a logic to insert each element of a queue after each elements of another queue
module queue_insert_testbench;

  int q1[$];
  int q2[$];
  int temp,a_s,i,j=0;

  initial begin
    q1 = {1,2,3};
    q2 = {11,22,33};
    $display("q1=%0p",q1);
    $display("q2=%0p",q2);
    $display("inserting each element of a queue after each elements of another queue");
    a_s = q1.size();
    for(i=0;i<a_s;i++)begin
      temp = q1.pop_front();
      q2.insert((i*2)+1,temp);
    end
    $display("q2=%0p",q2);
  end

endmodule



//output
// q1='{1, 2, 3} 
// q2='{11, 22, 33} 
// inserting each element of a queue after each elements of another queue
// q2='{11, 1, 22, 2, 33, 3} 