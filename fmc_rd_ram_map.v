module fmc_rd_ram_map(
  input wire         clk_i,
  input wire         rst_i,
  input wire         cs_i,
  input wire         rd_i,
  input wire         wr_i,
  input wire [24:0]  addr_i,
  input wire [15:0]  arm_fpga_data_i [0:99],
  output wire        thr_state_en,
  output wire  [15:0]  data_o
);
    reg data_o_en;
    always @(posedge clk_i)begin
        if(rst_i)
            data_o_en <= 1'b0;
        else if(cs_i==1'b0 && rd_i==1'b0 && wr_i==1'b1)
            data_o_en <= 1'b1;
    end
    assign thr_state_en <= data_o_en;

    reg [15:0]  data_o_r;
    always @(posedge clk_i) begin
      if(rst_i) begin
        fpga_arm_data_i <= 16'd0;
      end
      else if(cs_i==1'b0 && rd_i==1'b0 && wr_i==1'b1) begin
        case (addr_i)
          25'd0: data_o_r <= fpga_arm_data_i[0];
          25'd1: data_o_r <= fpga_arm_data_i[1];
          25'd2: data_o_r <= fpga_arm_data_i[2];
          25'd3: data_o_r <= fpga_arm_data_i[3];
          25'd4: data_o_r <= fpga_arm_data_i[4];
          25'd5: data_o_r <= fpga_arm_data_i[5];
          25'd6: data_o_r <= fpga_arm_data_i[6];
          25'd7: data_o_r <= fpga_arm_data_i[7];
          25'd8: data_o_r <= fpga_arm_data_i[8];
          25'd9: data_o_r <= fpga_arm_data_i[9];
          25'd10:data_o_r <= fpga_arm_data_i[10];
          25'd11:data_o_r <= fpga_arm_data_i[11];
          25'd12:data_o_r <= fpga_arm_data_i[12];
          25'd13:data_o_r <= fpga_arm_data_i[13];
          25'd14:data_o_r <= fpga_arm_data_i[14];
          25'd15:data_o_r <= fpga_arm_data_i[15];
          25'd16:data_o_r <= fpga_arm_data_i[16];
          25'd17:data_o_r <= fpga_arm_data_i[17];
          25'd18:data_o_r <= fpga_arm_data_i[18];
          25'd19:data_o_r <= fpga_arm_data_i[19];
          25'd20:data_o_r <= fpga_arm_data_i[20];
          25'd21:data_o_r <= fpga_arm_data_i[21];
          25'd22:data_o_r <= fpga_arm_data_i[22];
          25'd23:data_o_r <= fpga_arm_data_i[23];
          25'd24:data_o_r <= fpga_arm_data_i[24];
          25'd25:data_o_r <= fpga_arm_data_i[25];
          25'd26:data_o_r <= fpga_arm_data_i[26];
          25'd27:data_o_r <= fpga_arm_data_i[27];
          25'd28:data_o_r <= fpga_arm_data_i[28];
          25'd29:data_o_r <= fpga_arm_data_i[29];
          25'd30:data_o_r <= fpga_arm_data_i[30];
          25'd31:data_o_r <= fpga_arm_data_i[31];
          25'd32:data_o_r <= fpga_arm_data_i[32];
          25'd33:data_o_r <= fpga_arm_data_i[33];
          25'd34:data_o_r <= fpga_arm_data_i[34];
          25'd35:data_o_r <= fpga_arm_data_i[35];
          25'd36:data_o_r <= fpga_arm_data_i[36];
          25'd38:data_o_r <= fpga_arm_data_i[38];
          25'd39:data_o_r <= fpga_arm_data_i[39];
          25'd40:data_o_r <= fpga_arm_data_i[40];
          25'd41:data_o_r <= fpga_arm_data_i[41];
          25'd42:data_o_r <= fpga_arm_data_i[42];
          25'd43:data_o_r <= fpga_arm_data_i[43];
          25'd44:data_o_r <= fpga_arm_data_i[44];
          25'd45:data_o_r <= fpga_arm_data_i[45];
          25'd46:data_o_r <= fpga_arm_data_i[46];
          25'd47:data_o_r <= fpga_arm_data_i[47];
          25'd48:data_o_r <= fpga_arm_data_i[48];
          25'd49:data_o_r <= fpga_arm_data_i[49];
          25'd50:data_o_r <= fpga_arm_data_i[50];
          25'd51:data_o_r <= fpga_arm_data_i[51];
          25'd52:data_o_r <= fpga_arm_data_i[52];
          25'd53:data_o_r <= fpga_arm_data_i[53];
          25'd54:data_o_r <= fpga_arm_data_i[54];
          25'd55:data_o_r <= fpga_arm_data_i[55];
          25'd56:data_o_r <= fpga_arm_data_i[56];
          25'd57:data_o_r <= fpga_arm_data_i[57];
          25'd58:data_o_r <= fpga_arm_data_i[58];
          25'd59:data_o_r <= fpga_arm_data_i[59];
          25'd60:data_o_r <= fpga_arm_data_i[60];
          25'd61:data_o_r <= fpga_arm_data_i[61];
          25'd62:data_o_r <= fpga_arm_data_i[62];
          25'd63:data_o_r <= fpga_arm_data_i[63];
          default:; 
        endcase
        end
    end  
    assign data_o = data_o_r;
endmodule