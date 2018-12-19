module fmc_noe_sync(
  input wire clk_i,
  input wire rst_i,
  input wire fmc_noe_i,
  output wire rd_o
);
    reg [2:0]   fmc_noe_reg;
    always @(posedge clk_i) begin
      if (rst_i)
        fmc_noe_reg <= 3'b111;
      else if
        fmc_noe_reg <= {fmc_noe_reg[1:0],fmc_noe_i};
    end

    assign rd_o = fmc_noe_reg[2];
    
endmodule