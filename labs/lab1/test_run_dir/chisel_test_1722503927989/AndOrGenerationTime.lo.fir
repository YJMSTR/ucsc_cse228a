FIRRTL version 1.2.0
circuit AndOrGenerationTime :
  module AndOrGenerationTime :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[cmd12.sc 2:16]
    input io_b : UInt<1> @[cmd12.sc 2:16]
    output io_out : UInt<1> @[cmd12.sc 2:16]

    node _io_out_T = and(io_a, io_b) @[cmd12.sc 9:24]
    io_out <= _io_out_T @[cmd12.sc 9:16]
