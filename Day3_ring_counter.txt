module ring_counter(clk,rst,Q);
  input clk,rst;
  parameter width =4;
  output reg [width-1:0]Q;
  always@(posedge clk)
    begin
      if (~rst) 
        Q[width-1:0]=1;
      else
        Q[width-1:0] = {(Q[0]),Q[width-1:1]};
      
    end

endmodule
