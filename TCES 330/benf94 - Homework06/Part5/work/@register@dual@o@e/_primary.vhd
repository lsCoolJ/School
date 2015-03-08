library verilog;
use verilog.vl_types.all;
entity RegisterDualOE is
    generic(
        N               : integer := 16
    );
    port(
        I               : in     vl_logic_vector;
        Ld              : in     vl_logic;
        Oea             : in     vl_logic;
        Oeb             : in     vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        Qa              : out    vl_logic_vector;
        Qb              : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end RegisterDualOE;
