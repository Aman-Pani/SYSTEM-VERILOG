module d_latch (
    input d,clk,rst,
    output w1,q,qn 
);
wire w2;
assign qn=~q;
mux_ m1 (d,w1,clk,w1);
mux_ m2 (w1,w2,~clk,w2);
assign q=w2;
endmodule

module mux_(input i0,i1,sl,output reg y);
  always @(i0,i1,sl)
    begin 
      	   if(sl==0)	y<=i0;
      else if(sl==1)  	y<=i1;
    end
endmodule