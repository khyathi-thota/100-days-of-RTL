
`timescale 1ns/1ps;

module ring_counter_tb;
parameter width=4;
  
  //input and ouputs
  
  reg clk,rst;
  wire [width-1:0]Q;
  
  
  //instantiation of UUT
  
  ring_counter uut(
    .clk(clk),
    .rst(rst),
    .Q(Q)
  );
  
  
  //intial values
  
  initial begin
    clk = 0;
    rst =0;
    #15 rst =1;
    $monitor("T=%0t,out = %4b",$time,Q);
    
  end
  
  always #10 clk=~clk;
  
 
  
  initial
    #100 $finish;
  
   initial begin
    $dumpfile("dump.vcd");
     $dumpvars(0,ring_counter_tb);
  end
  
endmodule
    
    
  
    
