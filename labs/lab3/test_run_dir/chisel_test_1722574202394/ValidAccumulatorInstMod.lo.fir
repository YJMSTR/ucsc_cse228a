FIRRTL version 1.2.0
circuit ValidAccumulatorInstMod :
  module ValidAccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    input io_data_valid : UInt<1> @[cmd18.sc 2:16]
    input io_data_bits : UInt<4> @[cmd18.sc 2:16]
    input io_rst : UInt<1> @[cmd18.sc 2:16]
    output io_count : UInt<4> @[cmd18.sc 2:16]

    reg io_count_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count_count) @[cmd13.sc 9:24]
    node _io_count_count_count_T = add(io_count_count_count, io_data_bits) @[cmd13.sc 13:24]
    node _io_count_count_count_T_1 = tail(_io_count_count_count_T, 1) @[cmd13.sc 13:24]
    node _GEN_0 = mux(io_rst, UInt<1>("h0"), _io_count_count_count_T_1) @[cmd13.sc 10:16 11:15 13:15]
    reg io_count_count_count_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count_count_1) @[cmd13.sc 9:24]
    node _io_count_count_count_T_2 = add(io_count_count_count_1, UInt<1>("h0")) @[cmd13.sc 13:24]
    node _io_count_count_count_T_3 = tail(_io_count_count_count_T_2, 1) @[cmd13.sc 13:24]
    node _GEN_1 = mux(io_rst, UInt<1>("h0"), _io_count_count_count_T_3) @[cmd13.sc 10:16 11:15 13:15]
    node io_count_count = mux(io_data_valid, io_count_count_count, io_count_count_count_1) @[cmd17.sc 9:20]
    io_count <= io_count_count @[cmd18.sc 7:14]
    io_count_count_count <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd13.sc 9:{24,24}]
    io_count_count_count_1 <= mux(reset, UInt<4>("h0"), _GEN_1) @[cmd13.sc 9:{24,24}]
