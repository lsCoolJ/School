library verilog;
use verilog.vl_types.all;
entity Laser16 is
    port(
        B               : in     vl_logic;
        X               : out    vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic
    );
end Laser16;
