module enum_dt;
  enum {sun,mon,tues,wednes,thrus,fri,sat}Days;
  
  initial begin
    Days=Days.first;
    
    for(int i=0;i<7;i++)
      begin
        $display("Day %d of week is %0s \t value = %0d",i+1,Days.name,Days );
        Days=Days.next;
      end
  end
endmodule

// output

//  # Day 1 of week is sun 	     value = 0
//  # Day 2 of week is mon 	     value = 1
//  # Day 3 of week is tues 	 value = 2
//  # Day 4 of week is wednes 	 value = 3
//  # Day 5 of week is thrus 	 value = 4
//  # Day 6 of week is fri 	     value = 5
//  # Day 7 of week is sat 	     value = 6
