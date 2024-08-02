FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>
    input debug : UInt<1> @[cmd12.sc 2:19]
    output count : UInt<4> @[cmd12.sc 3:19]

    reg c : UInt<4>, clock with :
      reset => (UInt<1>("h0"), c) @[cmd12.sc 4:20]
    node _c_T = add(c, UInt<1>("h1")) @[cmd12.sc 6:16]
    node _c_T_1 = tail(_c_T, 1) @[cmd12.sc 6:16]
    node _GEN_0 = mux(debug, _c_T_1, c) @[cmd12.sc 5:18 6:11 4:20]
    count <= c @[cmd12.sc 8:11]
    c <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd12.sc 4:{20,20}]
