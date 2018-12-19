 module fmc_d_sync(
  input wire        clk_i,
  input wire        rst_i,
  input wire [15:0] fmc_d_i,
  output wire[15:0] data_o
);
    reg [15:0]   fmc_d_reg;
    always @(posedge clk_i) begin
      if (rst_i)
        fmc_d_reg <= 47'bz;
      else if
        fmc_d_reg <= {fmc_d_reg[47:32],fmc_d_i};
    end

    assign data_o = fmc_d_reg[47:32];
    
endmodule