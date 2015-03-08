library verilog;
use verilog.vl_types.all;
entity CountdownTimer is
    generic(
        InitValue       : integer := 49999999
    );
    port(
        Clock           : in     vl_logic;
        Enable          : in     vl_logic;
        Reset           : in     vl_logic;
        Pulse           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of InitValue : constant is 1;
end CountdownTimer;
