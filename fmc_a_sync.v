 module fmc_a_sync(
  input wire        clk_i,
  input wire        rst_i,
  input wire [24:0] fmc_a_i,
  output wire[24:0] addr_o
);
    reg [74:0]   fmc_a_reg;
    always @(posedge clk_i) begin
      if (rst_i)
        fmc_a_reg <= 75'bz;
      else if
        fmc_a_reg <= {fmc_a_reg[74:50],fmc_a_i};
    end

    assign addr_o = fmc_a_reg[74:50];
    
endmodule