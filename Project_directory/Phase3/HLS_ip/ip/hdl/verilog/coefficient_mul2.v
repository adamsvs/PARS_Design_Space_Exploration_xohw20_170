// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module coefficient_mul2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        b_address0,
        b_ce0,
        b_q0,
        c_address0,
        c_ce0,
        c_q0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [15:0] out_r_d0;
output  [7:0] b_address0;
output   b_ce0;
input  [15:0] b_q0;
output  [7:0] c_address0;
output   c_ce0;
input  [15:0] c_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ce0;
reg out_r_we0;
reg b_ce0;
reg c_ce0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] j_4_fu_109_p2;
reg   [8:0] j_4_reg_262;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_115_p1;
reg   [63:0] tmp_reg_267;
wire   [0:0] exitcond_fu_103_p2;
wire    ap_CS_fsm_state3;
reg   [15:0] c_load_reg_283;
wire   [31:0] a_fu_253_p2;
reg  signed [31:0] a_reg_288;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [31:0] lowbits_r_fu_136_p1;
reg   [31:0] lowbits_r_reg_299;
wire    ap_CS_fsm_state6;
reg   [31:0] lowbits_l_reg_304;
wire   [44:0] pp2_fu_162_p2;
reg   [44:0] pp2_reg_309;
wire    ap_CS_fsm_state7;
reg   [12:0] tmp_56_reg_314;
wire   [13:0] ret3_fu_215_p2;
reg   [13:0] ret3_reg_319;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_107_reg_325;
reg   [8:0] j_reg_92;
wire    ap_CS_fsm_state9;
wire   [52:0] grp_fu_130_p0;
wire   [63:0] grp_fu_130_p2;
wire   [31:0] pp1_fu_153_p1;
wire   [31:0] pp2_fu_162_p1;
wire   [44:0] pp1_fu_153_p2;
wire   [44:0] pp1_2_cast_fu_178_p1;
wire   [44:0] pp2_2_fu_181_p2;
wire   [12:0] tmp_57_fu_186_p4;
wire   [0:0] tmp_106_fu_200_p3;
wire   [13:0] ret3_cast_fu_196_p1;
wire   [13:0] tmp_28_i_cast_cast_fu_207_p3;
wire   [13:0] tmp_4_i_fu_232_p2;
wire   [14:0] tmp_4_i_cast_fu_237_p1;
wire  signed [14:0] tmp_3_i_cast_fu_229_p1;
wire   [14:0] tmp_5_i_fu_241_p3;
wire   [15:0] a_fu_253_p0;
wire   [15:0] a_fu_253_p1;
reg   [8:0] ap_NS_fsm;
wire   [31:0] a_fu_253_p00;
wire   [31:0] a_fu_253_p10;
wire   [44:0] pp1_fu_153_p10;
wire   [44:0] pp2_fu_162_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

RLWE_enc2_mul_53nfYi #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 53 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
RLWE_enc2_mul_53nfYi_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_130_p0),
    .din1(a_reg_288),
    .ce(1'b1),
    .dout(grp_fu_130_p2)
);

RLWE_enc2_mul_mulibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
RLWE_enc2_mul_mulibs_U26(
    .din0(a_fu_253_p0),
    .din1(a_fu_253_p1),
    .dout(a_fu_253_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j_reg_92 <= j_4_reg_262;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_reg_92 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        a_reg_288 <= a_fu_253_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_load_reg_283 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_4_reg_262 <= j_4_fu_109_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        lowbits_l_reg_304 <= {{grp_fu_130_p2[63:32]}};
        lowbits_r_reg_299 <= lowbits_r_fu_136_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        pp2_reg_309 <= pp2_fu_162_p2;
        tmp_56_reg_314 <= {{pp1_fu_153_p2[44:32]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ret3_reg_319 <= ret3_fu_215_p2;
        tmp_107_reg_325 <= ret3_fu_215_p2[32'd13];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_267[8 : 0] <= tmp_fu_115_p1[8 : 0];
    end
end

always @ (*) begin
    if ((((exitcond_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_fu_253_p0 = a_fu_253_p00;

assign a_fu_253_p00 = c_load_reg_283;

assign a_fu_253_p1 = a_fu_253_p10;

assign a_fu_253_p10 = b_q0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign b_address0 = tmp_reg_267;

assign c_address0 = tmp_fu_115_p1;

assign exitcond_fu_103_p2 = ((j_reg_92 == 9'd256) ? 1'b1 : 1'b0);

assign grp_fu_130_p0 = 64'd2401607092007494;

assign j_4_fu_109_p2 = (j_reg_92 + 9'd1);

assign lowbits_r_fu_136_p1 = grp_fu_130_p2[31:0];

assign out_r_address0 = tmp_reg_267;

assign out_r_d0 = $signed(tmp_5_i_fu_241_p3);

assign pp1_2_cast_fu_178_p1 = tmp_56_reg_314;

assign pp1_fu_153_p1 = pp1_fu_153_p10;

assign pp1_fu_153_p10 = lowbits_r_reg_299;

assign pp1_fu_153_p2 = (45'd7681 * pp1_fu_153_p1);

assign pp2_2_fu_181_p2 = (pp1_2_cast_fu_178_p1 + pp2_reg_309);

assign pp2_fu_162_p1 = pp2_fu_162_p10;

assign pp2_fu_162_p10 = lowbits_l_reg_304;

assign pp2_fu_162_p2 = (45'd7681 * pp2_fu_162_p1);

assign ret3_cast_fu_196_p1 = tmp_57_fu_186_p4;

assign ret3_fu_215_p2 = (ret3_cast_fu_196_p1 - tmp_28_i_cast_cast_fu_207_p3);

assign tmp_106_fu_200_p3 = a_reg_288[32'd31];

assign tmp_28_i_cast_cast_fu_207_p3 = ((tmp_106_fu_200_p3[0:0] === 1'b1) ? 14'd7680 : 14'd0);

assign tmp_3_i_cast_fu_229_p1 = $signed(ret3_reg_319);

assign tmp_4_i_cast_fu_237_p1 = tmp_4_i_fu_232_p2;

assign tmp_4_i_fu_232_p2 = (14'd7681 + ret3_reg_319);

assign tmp_57_fu_186_p4 = {{pp2_2_fu_181_p2[44:32]}};

assign tmp_5_i_fu_241_p3 = ((tmp_107_reg_325[0:0] === 1'b1) ? tmp_4_i_cast_fu_237_p1 : tmp_3_i_cast_fu_229_p1);

assign tmp_fu_115_p1 = j_reg_92;

always @ (posedge ap_clk) begin
    tmp_reg_267[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //coefficient_mul2
