-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clz is
port (
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (30 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of clz is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv5_18 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal tmp_fu_74_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_149_fu_90_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_fu_84_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_assign_fu_94_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_cast1_fu_70_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_x_fu_110_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_150_fu_118_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp4_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal n_fu_134_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_s_fu_102_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_151_fu_142_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_1_fu_156_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_152_fu_164_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal n_1_fu_148_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp7_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal n_5_fu_180_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_153_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_2_fu_200_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_154_fu_208_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_2_fu_192_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp1_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal n_6_fu_224_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_155_fu_238_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_156_fu_246_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_157_fu_254_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal n_3_fu_230_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal n_7_fu_262_p3 : STD_LOGIC_VECTOR (4 downto 0);


begin



    ap_ready <= ap_const_logic_1;
    ap_return <= (n_7_fu_262_p3 or n_3_fu_230_p3);
    icmp1_fu_218_p2 <= "1" when (tmp_154_fu_208_p4 = ap_const_lv2_0) else "0";
    icmp4_fu_128_p2 <= "1" when (tmp_150_fu_118_p4 = ap_const_lv8_0) else "0";
    icmp7_fu_174_p2 <= "1" when (tmp_152_fu_164_p4 = ap_const_lv4_0) else "0";
    icmp_fu_84_p2 <= "1" when (tmp_fu_74_p4 = ap_const_lv15_0) else "0";
    n_1_fu_148_p3 <= 
        n_fu_134_p3 when (icmp4_fu_128_p2(0) = '1') else 
        p_s_fu_102_p3;
    n_2_fu_192_p3 <= 
        n_5_fu_180_p2 when (icmp7_fu_174_p2(0) = '1') else 
        n_1_fu_148_p3;
    n_3_fu_230_p3 <= 
        n_6_fu_224_p2 when (icmp1_fu_218_p2(0) = '1') else 
        n_2_fu_192_p3;
    n_5_fu_180_p2 <= (n_1_fu_148_p3 or ap_const_lv5_4);
    n_6_fu_224_p2 <= (n_2_fu_192_p3 or ap_const_lv5_2);
    n_7_fu_262_p3 <= 
        ap_const_lv5_0 when (tmp_157_fu_254_p3(0) = '1') else 
        ap_const_lv5_1;
    n_fu_134_p3 <= 
        ap_const_lv5_18 when (icmp_fu_84_p2(0) = '1') else 
        ap_const_lv5_8;
    p_1_fu_156_p3 <= 
        tmp_151_fu_142_p2 when (icmp4_fu_128_p2(0) = '1') else 
        p_x_fu_110_p3;
    p_2_fu_200_p3 <= 
        tmp_153_fu_186_p2 when (icmp7_fu_174_p2(0) = '1') else 
        p_1_fu_156_p3;
    p_s_fu_102_p3 <= 
        ap_const_lv5_10 when (icmp_fu_84_p2(0) = '1') else 
        ap_const_lv5_0;
    p_x_fu_110_p3 <= 
        x_assign_fu_94_p3 when (icmp_fu_84_p2(0) = '1') else 
        x_cast1_fu_70_p1;
    tmp_149_fu_90_p1 <= x(16 - 1 downto 0);
    tmp_150_fu_118_p4 <= p_x_fu_110_p3(31 downto 24);
    tmp_151_fu_142_p2 <= std_logic_vector(shift_left(unsigned(p_x_fu_110_p3),to_integer(unsigned('0' & ap_const_lv32_8(31-1 downto 0)))));
    tmp_152_fu_164_p4 <= p_1_fu_156_p3(31 downto 28);
    tmp_153_fu_186_p2 <= std_logic_vector(shift_left(unsigned(p_1_fu_156_p3),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    tmp_154_fu_208_p4 <= p_2_fu_200_p3(31 downto 30);
    tmp_155_fu_238_p3 <= p_2_fu_200_p3(29 downto 29);
    tmp_156_fu_246_p3 <= p_2_fu_200_p3(31 downto 31);
    tmp_157_fu_254_p3 <= 
        tmp_155_fu_238_p3 when (icmp1_fu_218_p2(0) = '1') else 
        tmp_156_fu_246_p3;
    tmp_fu_74_p4 <= x(30 downto 16);
    x_assign_fu_94_p3 <= (tmp_149_fu_90_p1 & ap_const_lv16_0);
    x_cast1_fu_70_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x),32));
end behav;
