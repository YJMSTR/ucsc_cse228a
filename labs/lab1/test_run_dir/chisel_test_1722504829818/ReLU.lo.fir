FIRRTL version 1.2.0
circuit ReLU :
  module ReLU :
    input clock : Clock
    input reset : UInt<1>
    input io_x : SInt<5> @[cmd18.sc 2:16]
    output io_y : SInt<5> @[cmd18.sc 2:16]

    node _T = gt(asSInt(UInt<5>("h8")), io_x) @[cmd18.sc 8:24]
    node _GEN_0 = mux(_T, io_x, asSInt(UInt<5>("h8"))) @[cmd18.sc 11:11 8:32 9:11]
    node t = _GEN_0 @[cmd18.sc 7:21]
    node _T_1 = gt(t, asSInt(UInt<1>("h0"))) @[cmd18.sc 13:13]
    node _GEN_1 = mux(_T_1, t, asSInt(UInt<1>("h0"))) @[cmd18.sc 13:20 14:14 6:10]
    io_y <= _GEN_1
