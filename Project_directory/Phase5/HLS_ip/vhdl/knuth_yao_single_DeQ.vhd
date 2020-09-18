-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity knuth_yao_single_DeQ_rom is 
    generic(
             dwidth     : integer := 1; 
             awidth     : integer := 7; 
             mem_size    : integer := 109
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of knuth_yao_single_DeQ_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 to 29=> "0", 30 to 31=> "1", 32 => "0", 33 to 34=> "1", 35 => "0", 36 => "1", 37 to 39=> "0", 
    40 => "1", 41 => "0", 42 to 43=> "1", 44 to 45=> "0", 46 to 47=> "1", 48 to 49=> "0", 50 => "1", 
    51 to 54=> "0", 55 to 56=> "1", 57 to 58=> "0", 59 to 62=> "1", 63 => "0", 64 to 66=> "1", 67 => "0", 
    68 to 69=> "1", 70 to 72=> "0", 73 => "1", 74 to 75=> "0", 76 => "1", 77 => "0", 78 => "1", 
    79 to 81=> "0", 82 => "1", 83 to 86=> "0", 87 to 88=> "1", 89 to 93=> "0", 94 to 95=> "1", 96 => "0", 
    97 => "1", 98 => "0", 99 to 100=> "1", 101 => "0", 102 => "1", 103 => "0", 104 to 106=> "1", 
    107 to 108=> "0" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity knuth_yao_single_DeQ is
    generic (
        DataWidth : INTEGER := 1;
        AddressRange : INTEGER := 109;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of knuth_yao_single_DeQ is
    component knuth_yao_single_DeQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    knuth_yao_single_DeQ_rom_U :  component knuth_yao_single_DeQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


