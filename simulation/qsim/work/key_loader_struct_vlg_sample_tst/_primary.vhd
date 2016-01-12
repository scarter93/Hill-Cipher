library verilog;
use verilog.vl_types.all;
entity key_loader_struct_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        load_key        : in     vl_logic;
        p1              : in     vl_logic_vector(3 downto 0);
        p2              : in     vl_logic_vector(3 downto 0);
        p3              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end key_loader_struct_vlg_sample_tst;
