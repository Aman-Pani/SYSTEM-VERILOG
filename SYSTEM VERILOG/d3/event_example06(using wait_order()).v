module multiple_events;
  event ev1;
  event ev2;
  event ev3;
  initial begin
    fork     
      begin
        #6
        $display($time,"Triggering the 1st event");
        ->ev1;
      end
      
      begin 
        #2
        $display($time,"Triggering the 2nd event");   
        ->ev2; 
      end
      
      begin
        #8
        $display($time,"Triggering the last event");
        ->ev3;
      end
      
      begin
        $display($time,"waiting for the event to trigger");
        
        wait_order(ev2,ev1,ev3)                       //*************************
        
        $display($time,"Event Triggered in order");
        else
          $display($time,"Event Triggered out of order");
      end
    join  
  end
endmodule


//output

// for wait_order(ev2,ev1,ev3)
//                    0waiting for the event to trigger
//                    2Triggering the 2nd event
//                    6Triggering the 1st event
//                    8Triggering the last event
//                    8Event Triggered in order


// for wait_order(ev1,ev2,ev3)
//                    0waiting for the event to trigger
//                    2Triggering the 2nd event
//                    2Event Triggered out of order
//                    6Triggering the 1st event
//                    8Triggering the last event