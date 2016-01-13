library verilog;
use verilog.vl_types.all;
entity key_inverter is
    port(
        ek11            : in     vl_logic_vector(3 downto 0);
        ek12            : in     vl_logic_vector(3 downto 0);
        ek13            : in     vl_logic_vector(3 downto 0);
        ek21            : in     vl_logic_vector(3 downto 0);
        ek22            : in     vl_logic_vector(3 downto 0);
        ek23            : in     vl_logic_vector(3 downto 0);
        ek31            : in     vl_logic_vector(3 downto 0);
        ek32            : in     vl_logic_vector(3 downto 0);
        ek33            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        dk11            : out    vl_logic_vector(3 downto 0);
        dk12            : out    vl_logic_vector(3 downto 0);
        dk13            : out    vl_logic_vector(3 downto 0);
        dk21            : out    vl_logic_vector(3 downto 0);
        dk22            : out    vl_logic_vector(3 downto 0);
        dk23            : out    vl_logic_vector(3 downto 0);
        dk31            : out    vl_logic_vector(3 downto 0);
        dk32            : out    vl_logic_vector(3 downto 0);
        dk33            : out    vl_logic_vector(3 downto 0)
    );
end key_inverter;
