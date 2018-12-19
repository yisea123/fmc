module fmc_ne_sync(
  input wire clk_i,
  input wire rst_i,
  input wire fmc_ne_i,
  output wire cs_o
);
    reg [2:0]   fmc_ne_reg;
    always @(posedge clk_i) begin
      if (rst_i)
        fmc_ne_reg <= 3'b111;
      else if
        fmc_ne_reg <= {fmc_ne_reg[1:0],fmc_ne_i};
    end

    assign cs_o = fmc_ne_reg[2];

endmodule