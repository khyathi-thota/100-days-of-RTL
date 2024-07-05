module odd_parity (
     Ip,      // Input data (N bits)
   parity_bit      // Output parity bit
);
  
  parameter N = 4; 
  input reg [N-1:0] Ip;
  
  output reg parity_bit;
  
              // Parameter for data width

reg xor_result;                // Register to store intermediate XOR results

always @* begin
    xor_result = 0;            // Initialize xor_result to 0
    
    // Perform XOR operation across all bits
    for (int count = 0; count < N; count = count + 1) begin
        xor_result = xor_result ^ Ip[count];
    end
    
    // Calculate parity bit as the complement of xor_result
    parity_bit = ~xor_result;
end

endmodule


          
      
