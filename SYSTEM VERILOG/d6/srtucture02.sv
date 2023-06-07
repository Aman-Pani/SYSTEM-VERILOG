module tb;  
  typedef struct{
    
    string name;
    string sic;
    int [7:0]phno;
  
  }id;
  id id1;
  id id2;
  
  initial begin 
    
    id1.name = "Aman";
    id1.sic = "zxc123";
    id1.phon = 1234567890;
    $display("id1.name = %s \tid1.sic = %s \tid1.phon = %0d",id1.name,id1.sic,id1.phon);
    
    id2.name = "Ommm";
    id2.sic = "hjk765";
    id2.phon = 9087654321;
    $display("id2.name = %s \tid2.sic = %s \tid2.phon = %0d",id2.name,id2.sic,id2.phon); 
  end
endmodule


//output
// id1.name = 103 	id1.sic = 141
// id2.name = 210 	id2.sic = 100
// pack1.b = 431