module fmc_wr_ram_map(
  input wire clk_i,
  input wire rst_i,
  input wire cs_i,
  input wire rd_i,
  input wire wr_i,
  input wire [24:0]  addr_i,
  input wire [15:0]  data_i,
  output reg [15:0]  arm_fpga_data_o [0:99]
);
    reg [15:0]  arm_fpga_data_o [63:0];

    always @(posedge clk_i) begin
      if(rst_i) begin
        arm_fpga_data_o <= 16'd0;
      end
      else if(cs_i==1'b0 && rd_i==1'b1 && wr_i==1'b0) begin
        case (addr_i)
          25'd0: arm_fpga_data_o[0]  <= data_i;
          25'd1: arm_fpga_data_o[1]  <= data_i;
          25'd2: arm_fpga_data_o[2]  <= data_i;
          25'd3: arm_fpga_data_o[3]  <= data_i;
          25'd4: arm_fpga_data_o[4]  <= data_i;
          25'd5: arm_fpga_data_o[5]  <= data_i;
          25'd6: arm_fpga_data_o[6]  <= data_i;
          25'd7: arm_fpga_data_o[7]  <= data_i;
          25'd8: arm_fpga_data_o[8]  <= data_i;
          25'd9: arm_fpga_data_o[9]  <= data_i;
          25'd10:arm_fpga_data_o[10] <= data_i;
          25'd11:arm_fpga_data_o[11] <= data_i;
          25'd12:arm_fpga_data_o[12] <= data_i;
          25'd13:arm_fpga_data_o[13] <= data_i;
          25'd14:arm_fpga_data_o[14] <= data_i;
          25'd15:arm_fpga_data_o[15] <= data_i;
          25'd16:arm_fpga_data_o[16] <= data_i;
          25'd17:arm_fpga_data_o[17] <= data_i;
          25'd18:arm_fpga_data_o[18] <= data_i;
          25'd19:arm_fpga_data_o[19] <= data_i;
          25'd20:arm_fpga_data_o[20] <= data_i;
          25'd21:arm_fpga_data_o[21] <= data_i;
          25'd22:arm_fpga_data_o[22] <= data_i;
          25'd23:arm_fpga_data_o[23] <= data_i;
          25'd24:arm_fpga_data_o[24] <= data_i;
          25'd25:arm_fpga_data_o[25] <= data_i;
          25'd26:arm_fpga_data_o[26] <= data_i;
          25'd27:arm_fpga_data_o[27] <= data_i;
          25'd28:arm_fpga_data_o[28] <= data_i;
          25'd29:arm_fpga_data_o[29] <= data_i;
          25'd30:arm_fpga_data_o[30] <= data_i;
          25'd31:arm_fpga_data_o[31] <= data_i;
          25'd32:arm_fpga_data_o[32] <= data_i;
          25'd33:arm_fpga_data_o[33] <= data_i;
          25'd34:arm_fpga_data_o[34] <= data_i;
          25'd35:arm_fpga_data_o[35] <= data_i;
          25'd36:arm_fpga_data_o[36] <= data_i;
          25'd38:arm_fpga_data_o[38] <= data_i;
          25'd39:arm_fpga_data_o[39] <= data_i;
          25'd40:arm_fpga_data_o[40] <= data_i;
          25'd41:arm_fpga_data_o[41] <= data_i;
          25'd42:arm_fpga_data_o[42] <= data_i;
          25'd43:arm_fpga_data_o[43] <= data_i;
          25'd44:arm_fpga_data_o[44] <= data_i;
          25'd45:arm_fpga_data_o[45] <= data_i;
          25'd46:arm_fpga_data_o[46] <= data_i;
          25'd47:arm_fpga_data_o[47] <= data_i;
          25'd48:arm_fpga_data_o[48] <= data_i;
          25'd49:arm_fpga_data_o[49] <= data_i;
          25'd50:arm_fpga_data_o[50] <= data_i;
          25'd51:arm_fpga_data_o[51] <= data_i;
          25'd52:arm_fpga_data_o[52] <= data_i;
          25'd53:arm_fpga_data_o[53] <= data_i;
          25'd54:arm_fpga_data_o[54] <= data_i;
          25'd55:arm_fpga_data_o[55] <= data_i;
          25'd56:arm_fpga_data_o[56] <= data_i;
          25'd57:arm_fpga_data_o[57] <= data_i;
          25'd58:arm_fpga_data_o[58] <= data_i;
          25'd59:arm_fpga_data_o[59] <= data_i;
          25'd60:arm_fpga_data_o[60] <= data_i;
          25'd61:arm_fpga_data_o[61] <= data_i;
          25'd62:arm_fpga_data_o[62] <= data_i;
          25'd63:arm_fpga_data_o[63] <= data_i;
          default:arm_fpga_data_o <= 16'd0; 
        endcase
        end
    end  
endmodule