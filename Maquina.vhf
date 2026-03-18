--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Maquina.vhf
-- /___/   /\     Timestamp : 11/04/2024 19:02:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl /home/ise/MaquinaMultibanco/Maquina.vhf -w /home/ise/MaquinaMultibanco/Maquina.sch
--Design Name: Maquina
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Maquina is
   port ( );
end Maquina;

architecture BEHAVIORAL of Maquina is
   signal XLXI_2_cod_openSignal          : std_logic_vector (3 downto 0);
   signal XLXI_2_en_openSignal           : std_logic;
   signal XLXI_2_pin_openSignal          : std_logic_vector (3 downto 0);
   signal XLXI_2_saldo_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_2_valor_debito_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_3_cod_openSignal          : std_logic_vector (4 downto 0);
   signal XLXI_3_en_openSignal           : std_logic;
   signal XLXI_3_pin_openSignal          : std_logic_vector (3 downto 0);
   component SomadorComoSubtrator
      port ( en           : in    std_logic; 
             saldo        : in    std_logic_vector (7 downto 0); 
             valor_debito : in    std_logic_vector (7 downto 0); 
             pin          : in    std_logic_vector (3 downto 0); 
             cod          : in    std_logic_vector (3 downto 0); 
             novo_saldo   : out   std_logic_vector (7 downto 0));
   end component;
   
   component ComparadorPinCod
      port ( en         : in    std_logic; 
             pin        : in    std_logic_vector (3 downto 0); 
             cod        : in    std_logic_vector (4 downto 0); 
             pin_corret : out   std_logic);
   end component;
   
begin
   XLXI_2 : SomadorComoSubtrator
      port map (cod(3 downto 0)=>XLXI_2_cod_openSignal(3 downto 0),
                en=>XLXI_2_en_openSignal,
                pin(3 downto 0)=>XLXI_2_pin_openSignal(3 downto 0),
                saldo(7 downto 0)=>XLXI_2_saldo_openSignal(7 downto 0),
                valor_debito(7 downto 0)=>XLXI_2_valor_debito_openSignal(7 
            downto 0),
                novo_saldo=>open);
   
   XLXI_3 : ComparadorPinCod
      port map (cod(4 downto 0)=>XLXI_3_cod_openSignal(4 downto 0),
                en=>XLXI_3_en_openSignal,
                pin(3 downto 0)=>XLXI_3_pin_openSignal(3 downto 0),
                pin_corret=>open);
   
end BEHAVIORAL;


