library verilog;
use verilog.vl_types.all;
entity CountdownTimer is
    generic(
        NBits           : integer := 32
    );
    port(
        Clock           : in     vl_logic;
        Enable          : in     vl_logic;
        Reset           : in     vl_logic;
        InitValue       : in     vl_logic_vector;
        Pulse           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBits : constant is 1;
end CountdownTimer;
