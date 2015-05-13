library verilog;
use verilog.vl_types.all;
entity Laser16SM is
    port(
        B               : in     vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        Z               : in     vl_logic;
        Ec              : out    vl_logic;
        Rc              : out    vl_logic;
        X               : out    vl_logic
    );
end Laser16SM;
