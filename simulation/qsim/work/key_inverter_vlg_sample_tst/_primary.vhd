library verilog;
use verilog.vl_types.all;
entity key_inverter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ek11            : in     vl_logic_vector(3 downto 0);
        ek12            : in     vl_logic_vector(3 downto 0);
        ek13            : in     vl_logic_vector(3 downto 0);
        ek21            : in     vl_logic_vector(3 downto 0);
        ek22            : in     vl_logic_vector(3 downto 0);
        ek23            : in     vl_logic_vector(3 downto 0);
        ek31            : in     vl_logic_vector(3 downto 0);
        ek32            : in     vl_logic_vector(3 downto 0);
        ek33            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end key_inverter_vlg_sample_tst;
