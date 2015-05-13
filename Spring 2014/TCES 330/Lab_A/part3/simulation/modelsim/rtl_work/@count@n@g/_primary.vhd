library verilog;
use verilog.vl_types.all;
entity CountNG is
    generic(
        N               : integer := 16
    );
    port(
        Clock           : in     vl_logic;
        Enable          : in     vl_logic;
        Clear           : in     vl_logic;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end CountNG;
