library verilog;
use verilog.vl_types.all;
entity Laser16HLSMOne is
    port(
        B               : in     vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        X               : out    vl_logic
    );
end Laser16HLSMOne;
