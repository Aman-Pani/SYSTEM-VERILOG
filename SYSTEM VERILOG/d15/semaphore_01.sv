module semaphore_ex;
  initial begin
    fork
      display(1);  //  process-1
      display(2);  //  process-2
    join
  end
  
//   display method
  task automatic display(int a);                //****************  
    $display($time," : process= %0d started",a);
    #30;
    $display($time," : process= %0d ended",a);
  endtask
endmodule


// output

// without 'automatic' keyword
//                    0 : process= 1 started
//                    0 : process= 2 started
//                   30 : process= 2 ended
//                   30 : process= 2 ended

// with 'automatic' keyword
//                    0 : process= 1 started
//                    0 : process= 2 started
//                   30 : process= 1 ended
//                   30 : process= 2 ended
