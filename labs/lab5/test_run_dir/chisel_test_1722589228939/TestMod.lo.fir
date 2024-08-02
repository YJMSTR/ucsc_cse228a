FIRRTL version 1.2.0
circuit TestMod :
  module TestMod :
    input clock : Clock
    input reset : UInt<1>
    input debug : UInt<1> @[cmd9.sc 2:19]
    output count : UInt<4> @[cmd9.sc 3:19]

    reg cnt_reg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cnt_reg) @[cmd9.sc 5:26]
    node _cnt_reg_T = add(cnt_reg, UInt<1>("h1")) @[cmd9.sc 7:28]
    node _cnt_reg_T_1 = tail(_cnt_reg_T, 1) @[cmd9.sc 7:28]
    node _T = add(cnt_reg, UInt<1>("h1")) @[cmd9.sc 8:23]
    node _T_1 = tail(_T, 1) @[cmd9.sc 8:23]
    node _T_2 = eq(_T_1, UInt<3>("h5")) @[cmd9.sc 8:29]
    node _GEN_0 = mux(_T_2, UInt<1>("h0"), _cnt_reg_T_1) @[cmd9.sc 7:17 8:38 9:21]
    node _GEN_1 = mux(debug, _GEN_0, cnt_reg) @[cmd9.sc 6:18 5:26]
    reg cnt : UInt<3>, clock with :
      reset => (UInt<1>("h0"), cnt) @[src/main/scala/chisel3/util/Counter.scala 61:40]
    node wrap_wrap = eq(cnt, UInt<3>("h4")) @[src/main/scala/chisel3/util/Counter.scala 73:24]
    node _wrap_value_T = add(cnt, UInt<1>("h1")) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _wrap_value_T_1 = tail(_wrap_value_T, 1) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _GEN_2 = mux(wrap_wrap, UInt<1>("h0"), _wrap_value_T_1) @[src/main/scala/chisel3/util/Counter.scala 77:15 87:{20,28}]
    node _GEN_3 = mux(debug, _GEN_2, cnt) @[src/main/scala/chisel3/util/Counter.scala 118:16 61:40]
    node _GEN_4 = mux(debug, wrap_wrap, UInt<1>("h0")) @[src/main/scala/chisel3/util/Counter.scala 118:{16,23} 117:24]
    node wrap = _GEN_4 @[src/main/scala/chisel3/util/Counter.scala 117:24]
    count <= pad(cnt, 4) @[cmd9.sc 13:11]
    cnt_reg <= mux(reset, UInt<4>("h0"), _GEN_1) @[cmd9.sc 5:{26,26}]
    cnt <= mux(reset, UInt<3>("h0"), _GEN_3) @[src/main/scala/chisel3/util/Counter.scala 61:{40,40}]
