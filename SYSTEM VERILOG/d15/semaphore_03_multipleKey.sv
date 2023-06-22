module semaphore_ex;
  semaphore sema; //declaring semaphore sema
  
  initial begin
    sema=new(4); //creating sema with '4' keys 
    fork
      display(1); //process-1
      display(2); //process-2
    join
  end
  
  //display method
  task automatic display(int a);
    $display($time," : process- %0d : Searching for key", a);
    sema.get(3); //getting '3' keys from sema
    $display($time," : process- %0d : started", a);
    #10;
    sema.put(2); //putting '2' keys to sema
    #20
    $display($time," : process- %0d : ended", a);
    sema.put(1); //putting '1' keys to sema
  endtask
endmodule

// IN CASE OF MULTIPLE KEYS THW WORK FLOW DEPENS ON THE FIRST SEMA.GET() METHOD AND THE NO OF KEYS THE SCHMA IS HAVING. FOR THE ABOVE EXAMPLE A PROCESS REQUIRES 3 KEYS FOR ITS EXECUTION. SO WHEN IT GETS 3 KEYS THE PROCESS STARTS AND THE SCHEMA IS LEFT WITH ONLY ONE WHICH IS NOT ENOUGH FOR ANOTHER PROCESS TO BEGIN. WHEN THE SEMA.PUT() IS CALLED THEN IT RETURNS 2 KEYS AND NOW THE SCHEMA HAVE IN TOTAL 3 KEYS HENCE THE NEXT PROCESS CAN STARTS IT EXECUTION.


// output
// with 'automatic' keyword
//                    0 : process- 1 : Searching for key
//                    0 : process- 1 : started
//                    0 : process- 2 : Searching for key
//                   10 : process- 2 : started
//                   30 : process- 1 : ended
//                   40 : process- 2 : ended

// without 'automatic' keyword
//                    0 : process- 1 : Searching for key
//                    0 : process- 1 : started
//                    0 : process- 2 : Searching for key
//                   10 : process- 2 : started
//                   30 : process- 2 : ended
//                   40 : process- 2 : ended