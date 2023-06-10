//

module top;
  int q[$];
  
  initial begin
    q = {1,2,3};
    $display("q=%0p",q);
    //     push_front operation
    q.push_front(0);
    $display("q=%0p",q);
    
    //     push_back operation
    q.push_back(4);
    $display("q=%0p",q);
    

    
    
  end
endmodule


// output
// q='{1, 2, 3} 
// q='{0, 1, 2, 3} 
// q='{0, 1, 2, 3, 4} 