FIRRTL version 1.2.0
circuit Delay2 :
  module Delay2 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<5> @[cmd2.sc 2:16]
    output io_out : UInt<5> @[cmd2.sc 2:16]

    reg io_out_REG : UInt<5>, clock with :
      reset => (UInt<1>("h0"), io_out_REG) @[cmd2.sc 7:30]
    reg io_out_REG_1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), io_out_REG_1) @[cmd2.sc 7:22]
    io_out <= io_out_REG_1 @[cmd2.sc 7:12]
    io_out_REG <= io_in @[cmd2.sc 7:30]
    io_out_REG_1 <= io_out_REG @[cmd2.sc 7:22]
