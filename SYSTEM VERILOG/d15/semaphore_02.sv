module semaphore_ex;
  semaphore sema;
  
  initial begin
    sema = new(1);  //creating sema with 1 key
    fork
      display(1);  //process-1
      #30
      display(2);  //process-2
    join
  end
  
//   display method
  task automatic display(int a);
    $display($time," : process= %0d : searching for key",a);
    sema.get();  //getting 1 key from sema
    $display($time," : process= %0d : started",a);
    #30
    $display($time," : process= %0d : ended",a);
    sema.put();  //putting 1 key to sema
  endtask
endmodule


// output
// with or without 'automatic' keyword
// 				      0 : process= 1 : searching for key
//                    0 : process= 1 : started
//                   30 : process= 1 : ended
//                   30 : process= 2 : searching for key
//                   30 : process= 2 : started
//                   60 : process= 2 : ended