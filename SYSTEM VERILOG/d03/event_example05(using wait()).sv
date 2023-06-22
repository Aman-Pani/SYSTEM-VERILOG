module events_ex;
  event ev_1;
  
  initial begin
    fork
      //process-1 triggers event
      begin
        #5
        $display($time ,"\t triggering the event");
        #7
        ->ev_1;										//  -> : trigger commond
        
      end
      
      //process-2 wait for event to trigger
      begin
        $display($time ,"\t waiting for the event to trigger");
        wait(ev_1.triggered);							//   wait : wait for trigger
        $display($time ,"\t event triggered");
      end
    join
  end
endmodule
        
// output
//     0	 waiting for the event to trigger
//     5	 triggering the event
//    12	 event triggered
