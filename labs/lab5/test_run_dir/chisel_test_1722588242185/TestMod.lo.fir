FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>

    reg debug : UInt<1>, clock with :
      reset => (UInt<1>("h0"), debug) @[cmd10.sc 2:24]
    reg c : UInt<4>, clock with :
      reset => (UInt<1>("h0"), c) @[cmd10.sc 4:20]
    node _c_T = add(c, UInt<1>("h1")) @[cmd10.sc 6:16]
    node _c_T_1 = tail(_c_T, 1) @[cmd10.sc 6:16]
    node _GEN_0 = mux(debug, _c_T_1, c) @[cmd10.sc 5:17 6:11 4:20]
    node count = c @[cmd10.sc 3:21 8:11]
    debug <= mux(reset, UInt<1>("h1"), debug) @[cmd10.sc 2:{24,24,24}]
    c <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd10.sc 4:{20,20}]
