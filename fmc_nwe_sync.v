module fmc_nwe_sync(
  input wire clk_i,
  input wire rst_i,
  input wire fmc_nwe_i,
  output wire wr_o
);
    reg [2:0]   fmc_nwe_reg;
    always @(posedge clk_i) begin
      if (rst_i)
        fmc_nwe_reg <= 3'b111;
      else if
        fmc_nwe_reg <= {fmc_nwe_reg[1:0],fmc_nwe_i};
    end

    assign wr_o = fmc_nwe_reg[2];
    
endmodule