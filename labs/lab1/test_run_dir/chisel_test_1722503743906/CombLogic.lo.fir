FIRRTL version 1.2.0
circuit CombLogic :
  module CombLogic :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[cmd5.sc 2:16]
    input io_b : UInt<1> @[cmd5.sc 2:16]
    input io_c : UInt<1> @[cmd5.sc 2:16]
    output io_out : UInt<1> @[cmd5.sc 2:16]

    node _io_out_T = and(io_a, io_b) @[cmd5.sc 9:20]
    node _io_out_T_1 = eq(io_c, UInt<1>("h0")) @[cmd5.sc 9:29]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[cmd5.sc 9:27]
    node _T = bits(reset, 0, 0) @[cmd5.sc 12:11]
    node _T_1 = eq(_T, UInt<1>("h0")) @[cmd5.sc 12:11]
    io_out <= _io_out_T_2 @[cmd5.sc 9:12]
    printf(clock, and(and(UInt<1>("h1"), _T_1), UInt<1>("h1")), "a: %d, b: %d, c: %d, out: %d\n", io_a, io_b, io_c, io_out) : printf @[cmd5.sc 12:11]
