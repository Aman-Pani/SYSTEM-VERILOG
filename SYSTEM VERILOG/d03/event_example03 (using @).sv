module events_ex;
  event ev_1;
  
  initial begin
    fork
      //process-1 triggers event
      begin
        #40
        $display($time ,"\t triggering the event");
        
        #30											//********************************
        
        ->ev_1;										//  -> : trigger commond
      end
      
      //process-2 wait for event to trigger
      begin
        $display($time ,"\t waiting for the event to trigger");
        #41
        @(ev_1.triggered);							//   @ : wait for trigger
        $display($time ,"\t event triggered");
      end
    join
  end
  initial begin
    #100
    $display($time ,"\t ending the event  ");
    $finish;
  end
endmodule
        
// output

// #                    0	 waiting for the event to trigger
// #                   40	 triggering the event
// #                   70	 event triggered
// #                  100	 ending the event 
