FIRRTL version 1.2.0
circuit VecRotate :
  module VecRotate :
    input clock : Clock
    input reset : UInt<1>
    input io_in_0 : UInt<8> @[cmd5.sc 2:16]
    input io_in_1 : UInt<8> @[cmd5.sc 2:16]
    input io_in_2 : UInt<8> @[cmd5.sc 2:16]
    input io_in_3 : UInt<8> @[cmd5.sc 2:16]
    output io_out_0 : UInt<8> @[cmd5.sc 2:16]
    output io_out_1 : UInt<8> @[cmd5.sc 2:16]
    output io_out_2 : UInt<8> @[cmd5.sc 2:16]
    output io_out_3 : UInt<8> @[cmd5.sc 2:16]

    io_out_0 <= io_in_0 @[cmd5.sc 7:52]
    io_out_1 <= io_in_1 @[cmd5.sc 7:52]
    io_out_2 <= io_in_2 @[cmd5.sc 7:52]
    io_out_3 <= io_in_3 @[cmd5.sc 7:52]
