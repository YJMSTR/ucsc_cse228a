FIRRTL version 1.2.0
circuit AccumulatorInstMod :
  module AccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    input io_data : UInt<4> @[cmd10.sc 2:16]
    input io_rst : UInt<1> @[cmd10.sc 2:16]
    output io_count : UInt<4> @[cmd10.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd9.sc 9:24]
    node _io_count_count_T = add(io_count_count, io_data) @[cmd9.sc 13:24]
    node _io_count_count_T_1 = tail(_io_count_count_T, 1) @[cmd9.sc 13:24]
    node _GEN_0 = mux(io_rst, UInt<1>("h0"), _io_count_count_T_1) @[cmd9.sc 10:16 11:15 13:15]
    io_count <= io_count_count @[cmd10.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd9.sc 9:{24,24}]
