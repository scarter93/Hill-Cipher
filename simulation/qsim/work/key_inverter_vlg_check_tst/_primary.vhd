library verilog;
use verilog.vl_types.all;
entity key_inverter_vlg_check_tst is
    port(
        dk11            : in     vl_logic_vector(3 downto 0);
        dk12            : in     vl_logic_vector(3 downto 0);
        dk13            : in     vl_logic_vector(3 downto 0);
        dk21            : in     vl_logic_vector(3 downto 0);
        dk22            : in     vl_logic_vector(3 downto 0);
        dk23            : in     vl_logic_vector(3 downto 0);
        dk31            : in     vl_logic_vector(3 downto 0);
        dk32            : in     vl_logic_vector(3 downto 0);
        dk33            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end key_inverter_vlg_check_tst;
