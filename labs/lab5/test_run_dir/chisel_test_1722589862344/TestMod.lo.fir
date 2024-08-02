FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>
    input debug : UInt<1> @[cmd28.sc 2:19]
    output count : UInt<4> @[cmd28.sc 3:19]

    reg cnt : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cnt) @[src/main/scala/chisel3/util/Counter.scala 61:40]
    node wrap_wrap = eq(cnt, UInt<4>("he")) @[src/main/scala/chisel3/util/Counter.scala 73:24]
    node _wrap_value_T = add(cnt, UInt<1>("h1")) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _wrap_value_T_1 = tail(_wrap_value_T, 1) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _GEN_0 = mux(wrap_wrap, UInt<1>("h0"), _wrap_value_T_1) @[src/main/scala/chisel3/util/Counter.scala 77:15 87:{20,28}]
    node _GEN_1 = mux(debug, _GEN_0, cnt) @[src/main/scala/chisel3/util/Counter.scala 118:16 61:40]
    node _GEN_2 = mux(debug, wrap_wrap, UInt<1>("h0")) @[src/main/scala/chisel3/util/Counter.scala 118:{16,23} 117:24]
    node wrap = _GEN_2 @[src/main/scala/chisel3/util/Counter.scala 117:24]
    count <= cnt @[cmd28.sc 6:11]
    cnt <= mux(reset, UInt<4>("h0"), _GEN_1) @[src/main/scala/chisel3/util/Counter.scala 61:{40,40}]
