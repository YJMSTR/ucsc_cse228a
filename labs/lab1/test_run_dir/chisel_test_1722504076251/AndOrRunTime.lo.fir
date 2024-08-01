FIRRTL version 1.2.0
circuit AndOrRunTime :
  module AndOrRunTime :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[cmd14.sc 2:16]
    input io_b : UInt<1> @[cmd14.sc 2:16]
    input io_useAnd : UInt<1> @[cmd14.sc 2:16]
    output io_out : UInt<1> @[cmd14.sc 2:16]

    node _io_out_T = and(io_a, io_b) @[cmd14.sc 10:24]
    node _io_out_T_1 = or(io_a, io_b) @[cmd14.sc 12:24]
    node _GEN_0 = mux(io_useAnd, _io_out_T, _io_out_T_1) @[cmd14.sc 10:16 12:16 9:22]
    io_out <= _GEN_0
