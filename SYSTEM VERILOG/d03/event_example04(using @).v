module events_ex;
  event ev_1;
  
  initial begin
    fork
      //process-1 triggers event
      begin
        #40
        $display($time ,"\t triggering the event");
        ->ev_1;										//  -> : trigger commond
      end
      
      //process-2 wait for event to trigger
      begin
        $display($time ,"\t waiting for the event to trigger");
        #20
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

//for  >=40
//         0	 waiting for the event to trigger
//        40	 triggering the event
//       100	 ending the event

//for  <40
// #       0	 waiting for the event to trigger
// #      40	 triggering the event
// #      40	 event triggered
// #     100	 ending the event 