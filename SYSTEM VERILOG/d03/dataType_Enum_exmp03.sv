module typedef_example;
  
  typedef enum{monday,tuesday,wednesday,thusday,friday,saturday,sunday}days;
  
  days Day;
  
  initial begin
    
    Day=Day.first;
    $display("the fist day is = %0s \t\t value = %0d",Day.name,Day);
    
    Day=Day.next(2);
    $display("the next(2) day is = %0s \t value = %0d",Day.name,Day);
    
    Day=Day.last;
    $display("the last day is = %0s \t\t value = %0d",Day.name,Day);
    
    Day=Day.next(2);
    $display("the next(2) day is = %0s \t\t value = %0d",Day.name,Day);
    
    Day=Day.prev(2);
    $display("the next(2) day is = %0s \t\t value = %0d",Day.name,Day);
    
    Day=Day.prev;
    $display("the next(2) day is = %0s \t value = %0d",Day.name,Day);
    
  end
  
endmodule


//output

// # the fist day is = monday 		     value = 0
// # the next(2) day is = wednesday 	 value = 2
// # the last day is = sunday 		     value = 6
// # the next(2) day is = tuesday 		 value = 1
// # the next(2) day is = sunday 		 value = 6
// # the next(2) day is = saturday 	     value = 5
