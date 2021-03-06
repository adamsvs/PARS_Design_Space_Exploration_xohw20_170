-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity knuth_yao_single_bkb_rom is 
    generic(
             dwidth     : integer := 5; 
             awidth     : integer := 8; 
             mem_size    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of knuth_yao_single_bkb_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00011", 1 => "00100", 2 => "00001", 3 to 4=> "00010", 5 => "01000", 
    6 => "00110", 7 => "00001", 8 => "00011", 9 => "00000", 10 => "00001", 
    11 => "01001", 12 => "00010", 13 to 14=> "00101", 15 => "00100", 16 => "00011", 
    17 => "00100", 18 to 19=> "00001", 20 => "00010", 21 => "00111", 22 => "00110", 
    23 => "01011", 24 => "00011", 25 => "00000", 26 => "00001", 27 => "00100", 
    28 => "00010", 29 => "00100", 30 => "00101", 31 => "00010", 32 => "00011", 
    33 => "00100", 34 => "00001", 35 to 36=> "00010", 37 => "01000", 38 => "00110", 
    39 => "00000", 40 => "00011", 41 => "00000", 42 => "00001", 43 => "00111", 
    44 => "00010", 45 to 46=> "00101", 47 => "01100", 48 => "00011", 49 => "00100", 
    50 to 51=> "00001", 52 => "00010", 53 => "00111", 54 => "00110", 55 => "01001", 
    56 => "00011", 57 => "00000", 58 => "00001", 59 => "00011", 60 => "00010", 
    61 => "00100", 62 => "00101", 63 => "10011", 64 => "00011", 65 => "00100", 
    66 => "00001", 67 to 68=> "00010", 69 => "01000", 70 => "00110", 71 => "00001", 
    72 => "00011", 73 => "00000", 74 => "00001", 75 => "01001", 76 => "00010", 
    77 to 78=> "00101", 79 => "00000", 80 => "00011", 81 => "00100", 82 to 83=> "00001", 
    84 => "00010", 85 => "00111", 86 => "00110", 87 => "01010", 88 => "00011", 
    89 => "00000", 90 => "00001", 91 => "00100", 92 => "00010", 93 => "00100", 
    94 => "00101", 95 => "10001", 96 => "00011", 97 => "00100", 98 => "00001", 
    99 to 100=> "00010", 101 => "01000", 102 => "00110", 103 => "00000", 104 => "00011", 
    105 => "00000", 106 => "00001", 107 => "00111", 108 => "00010", 109 to 110=> "00101", 
    111 => "01000", 112 => "00011", 113 => "00100", 114 to 115=> "00001", 116 => "00010", 
    117 => "00111", 118 to 119=> "00110", 120 => "00011", 121 => "00000", 122 => "00001", 
    123 => "00011", 124 => "00010", 125 => "00100", 126 => "00101", 127 => "10101", 
    128 => "00011", 129 => "00100", 130 => "00001", 131 to 132=> "00010", 133 => "01000", 
    134 => "00110", 135 => "00001", 136 => "00011", 137 => "00000", 138 => "00001", 
    139 => "01001", 140 => "00010", 141 to 142=> "00101", 143 => "00100", 144 => "00011", 
    145 => "00100", 146 to 147=> "00001", 148 => "00010", 149 => "00111", 150 => "00110", 
    151 => "01011", 152 => "00011", 153 => "00000", 154 => "00001", 155 => "00100", 
    156 => "00010", 157 => "00100", 158 => "00101", 159 => "10000", 160 => "00011", 
    161 => "00100", 162 => "00001", 163 to 164=> "00010", 165 => "01000", 166 => "00110", 
    167 => "00000", 168 => "00011", 169 => "00000", 170 => "00001", 171 => "00111", 
    172 => "00010", 173 to 174=> "00101", 175 => "01010", 176 => "00011", 177 => "00100", 
    178 to 179=> "00001", 180 => "00010", 181 => "00111", 182 => "00110", 183 => "01001", 
    184 => "00011", 185 => "00000", 186 => "00001", 187 => "00011", 188 => "00010", 
    189 => "00100", 190 => "00101", 191 => "10100", 192 => "00011", 193 => "00100", 
    194 => "00001", 195 to 196=> "00010", 197 => "01000", 198 => "00110", 199 => "00001", 
    200 => "00011", 201 => "00000", 202 => "00001", 203 => "01001", 204 => "00010", 
    205 to 206=> "00101", 207 => "00000", 208 => "00011", 209 => "00100", 210 to 211=> "00001", 
    212 => "00010", 213 => "00111", 214 => "00110", 215 => "01010", 216 => "00011", 
    217 => "00000", 218 => "00001", 219 => "00100", 220 => "00010", 221 => "00100", 
    222 => "00101", 223 => "10010", 224 => "00011", 225 => "00100", 226 => "00001", 
    227 to 228=> "00010", 229 => "01000", 230 => "00110", 231 => "00000", 232 => "00011", 
    233 => "00000", 234 => "00001", 235 => "00111", 236 => "00010", 237 to 238=> "00101", 
    239 => "00111", 240 => "00011", 241 => "00100", 242 to 243=> "00001", 244 => "00010", 
    245 => "00111", 246 to 247=> "00110", 248 => "00011", 249 => "00000", 250 => "00001", 
    251 => "00011", 252 => "00010", 253 => "00100", 254 => "00101", 255 => "10110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity knuth_yao_single_bkb is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of knuth_yao_single_bkb is
    component knuth_yao_single_bkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    knuth_yao_single_bkb_rom_U :  component knuth_yao_single_bkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


