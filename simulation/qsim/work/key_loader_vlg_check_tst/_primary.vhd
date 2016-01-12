library verilog;
use verilog.vl_types.all;
entity key_loader_vlg_check_tst is
    port(
        k11             : in     vl_logic_vector(3 downto 0);
        k12             : in     vl_logic_vector(3 downto 0);
        k13             : in     vl_logic_vector(3 downto 0);
        k21             : in     vl_logic_vector(3 downto 0);
        k22             : in     vl_logic_vector(3 downto 0);
        k23             : in     vl_logic_vector(3 downto 0);
        k31             : in     vl_logic_vector(3 downto 0);
        k32             : in     vl_logic_vector(3 downto 0);
        k33             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end key_loader_vlg_check_tst;
