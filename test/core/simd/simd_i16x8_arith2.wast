;; Tests for i16x8 [min_s, min_u, max_s, max_u] operations.

(module
  (func (export "i16x8.min_s") (param v128 v128) (result v128) (i16x8.min_s (local.get 0) (local.get 1)))
  (func (export "i16x8.min_u") (param v128 v128) (result v128) (i16x8.min_u (local.get 0) (local.get 1)))
  (func (export "i16x8.max_s") (param v128 v128) (result v128) (i16x8.max_s (local.get 0) (local.get 1)))
  (func (export "i16x8.max_u") (param v128 v128) (result v128) (i16x8.max_u (local.get 0) (local.get 1)))
  (func (export "i16x8.min_s_with_const_0") (result v128) (i16x8.min_s (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535) (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768)))
  (func (export "i16x8.min_s_with_const_1") (result v128) (i16x8.min_s (v128.const i16x8 0 0 1 1 2 2 3 3) (v128.const i16x8 3 3 2 2 1 1 0 0)))
  (func (export "i16x8.min_u_with_const_2") (result v128) (i16x8.min_u (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535) (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768)))
  (func (export "i16x8.min_u_with_const_3") (result v128) (i16x8.min_u (v128.const i16x8 0 0 1 1 2 2 3 3) (v128.const i16x8 3 3 2 2 1 1 0 0)))
  (func (export "i16x8.max_s_with_const_4") (result v128) (i16x8.max_s (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535) (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768)))
  (func (export "i16x8.max_s_with_const_5") (result v128) (i16x8.max_s (v128.const i16x8 0 0 1 1 2 2 3 3) (v128.const i16x8 3 3 2 2 1 1 0 0)))
  (func (export "i16x8.max_u_with_const_6") (result v128) (i16x8.max_u (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535) (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768)))
  (func (export "i16x8.max_u_with_const_7") (result v128) (i16x8.max_u (v128.const i16x8 0 0 1 1 2 2 3 3) (v128.const i16x8 3 3 2 2 1 1 0 0)))
  (func (export "i16x8.min_s_with_const_8") (param v128) (result v128) (i16x8.min_s (local.get 0) (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)))
  (func (export "i16x8.min_s_with_const_9") (param v128) (result v128) (i16x8.min_s (local.get 0) (v128.const i16x8 0 0 1 1 2 2 3 3)))
  (func (export "i16x8.min_u_with_const_10") (param v128) (result v128) (i16x8.min_u (local.get 0) (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)))
  (func (export "i16x8.min_u_with_const_11") (param v128) (result v128) (i16x8.min_u (local.get 0) (v128.const i16x8 0 0 1 1 2 2 3 3)))
  (func (export "i16x8.max_s_with_const_12") (param v128) (result v128) (i16x8.max_s (local.get 0) (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)))
  (func (export "i16x8.max_s_with_const_13") (param v128) (result v128) (i16x8.max_s (local.get 0) (v128.const i16x8 0 0 1 1 2 2 3 3)))
  (func (export "i16x8.max_u_with_const_14") (param v128) (result v128) (i16x8.max_u (local.get 0) (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)))
  (func (export "i16x8.max_u_with_const_15") (param v128) (result v128) (i16x8.max_u (local.get 0) (v128.const i16x8 0 0 1 1 2 2 3 3)))
)

(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0 0 0 0 -1 -1 -1 -1)
                                     (v128.const i16x8 0 0 -1 -1 0 0 -1 -1))
                                     (v128.const i16x8 0 0 -1 -1 -1 -1 -1 -1))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 1 1 1 1 1 1 1 1)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
                                     (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 123 123 123 123 123 123 123 123)
                                     (v128.const i16x8 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3))
                                     (v128.const i16x8 123 123 123 123 123 123 123 123))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
                                     (v128.const i16x8 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0))
                                     (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0 0 0 0 -1 -1 -1 -1)
                                     (v128.const i16x8 0 0 -1 -1 0 0 -1 -1))
                                     (v128.const i16x8 0 0 0 0 0 0 -1 -1))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 1 1 1 1 1 1 1 1)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 123 123 123 123 123 123 123 123)
                                     (v128.const i16x8 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3))
                                     (v128.const i16x8 123 123 123 123 123 123 123 123))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
                                     (v128.const i16x8 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0))
                                     (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0 0 0 0 -1 -1 -1 -1)
                                     (v128.const i16x8 0 0 -1 -1 0 0 -1 -1))
                                     (v128.const i16x8 0 0 0 0 0 0 -1 -1))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 1 1 1 1 1 1 1 1)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 123 123 123 123 123 123 123 123)
                                     (v128.const i16x8 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3))
                                     (v128.const i16x8 123 123 123 123 123 123 123 123))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
                                     (v128.const i16x8 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0))
                                     (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
                                     (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
                                     (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0 0 0 0 -1 -1 -1 -1)
                                     (v128.const i16x8 0 0 -1 -1 0 0 -1 -1))
                                     (v128.const i16x8 0 0 -1 -1 -1 -1 -1 -1))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
                                     (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 1 1 1 1 1 1 1 1)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 1 1 1 1 1 1 1 1))
                                     (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535)
                                     (v128.const i16x8 128 128 128 128 128 128 128 128))
                                     (v128.const i16x8 65535 65535 65535 65535 65535 65535 65535 65535))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 32768 32768 32768 32768 32768 32768 32768 32768))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
                                     (v128.const i16x8 -32768 -32768 -32768 -32768 -32768 -32768 -32768 -32768))
                                     (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 123 123 123 123 123 123 123 123)
                                     (v128.const i16x8 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3 01_2_3))
                                     (v128.const i16x8 123 123 123 123 123 123 123 123))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
                                     (v128.const i16x8 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0 0x0_8_0))
                                     (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80))

;; Const vs const
(assert_return (invoke "i16x8.min_s_with_const_0") (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_s_with_const_1") (v128.const i16x8 0 0 1 1 1 1 0 0))
(assert_return (invoke "i16x8.min_u_with_const_2") (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_u_with_const_3") (v128.const i16x8 0 0 1 1 1 1 0 0))
(assert_return (invoke "i16x8.max_s_with_const_4") (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_s_with_const_5") (v128.const i16x8 3 3 2 2 2 2 3 3))
(assert_return (invoke "i16x8.max_u_with_const_6") (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_u_with_const_7") (v128.const i16x8 3 3 2 2 2 2 3 3))

;; Param vs const
(assert_return (invoke "i16x8.min_s_with_const_8" (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                                  (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_s_with_const_9" (v128.const i16x8 3 3 2 2 1 1 0 0))
                                                  (v128.const i16x8 0 0 1 1 1 1 0 0))
(assert_return (invoke "i16x8.min_u_with_const_10" (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                                   (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_u_with_const_11" (v128.const i16x8 3 3 2 2 1 1 0 0))
                                                   (v128.const i16x8 0 0 1 1 1 1 0 0))
(assert_return (invoke "i16x8.max_s_with_const_12" (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                                   (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_s_with_const_13" (v128.const i16x8 3 3 2 2 1 1 0 0))
                                                   (v128.const i16x8 3 3 2 2 2 2 3 3))
(assert_return (invoke "i16x8.max_u_with_const_14" (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                                   (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_u_with_const_15" (v128.const i16x8 3 3 2 2 1 1 0 0))
                                                   (v128.const i16x8 3 3 2 2 2 2 3 3))

;; Test different lanes go through different if-then clauses
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)
                                     (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                     (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 0 0 1 1 2 2 128 128)
                                     (v128.const i16x8 0 0 2 2 1 1 128 128))
                                     (v128.const i16x8 0 0 1 1 1 1 128 128))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)
                                     (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                     (v128.const i16x8 -32768 -32768 16384 16384 16384 16384 -32768 -32768))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 0 0 1 1 2 2 128 128)
                                     (v128.const i16x8 0 0 2 2 1 1 128 128))
                                     (v128.const i16x8 0 0 1 1 1 1 128 128))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)
                                     (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                     (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 0 0 1 1 2 2 128 128)
                                     (v128.const i16x8 0 0 2 2 1 1 128 128))
                                     (v128.const i16x8 0 0 2 2 2 2 128 128))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 -32768 -32768 32767 32767 16384 16384 65535 65535)
                                     (v128.const i16x8 65535 65535 16384 16384 32767 32767 -32768 -32768))
                                     (v128.const i16x8 65535 65535 32767 32767 32767 32767 65535 65535))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 0 0 1 1 2 2 128 128)
                                     (v128.const i16x8 0 0 2 2 1 1 128 128))
                                     (v128.const i16x8 0 0 2 2 2 2 128 128))

;; Test opposite signs of zero
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0)
                                     (v128.const i16x8 +0 +0 0 0 -0 -0 0 0))
                                     (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0))
(assert_return (invoke "i16x8.min_s" (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0)
                                     (v128.const i16x8 +0 +0 +0 +0 +0 +0 +0 +0))
                                     (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0)
                                     (v128.const i16x8 +0 +0 0 0 -0 -0 0 0))
                                     (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0))
(assert_return (invoke "i16x8.min_u" (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0)
                                     (v128.const i16x8 +0 +0 +0 +0 +0 +0 +0 +0))
                                     (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0)
                                     (v128.const i16x8 +0 +0 0 0 -0 -0 0 0))
                                     (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0))
(assert_return (invoke "i16x8.max_s" (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0)
                                     (v128.const i16x8 +0 +0 +0 +0 +0 +0 +0 +0))
                                     (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0)
                                     (v128.const i16x8 +0 +0 0 0 -0 -0 0 0))
                                     (v128.const i16x8 -0 -0 -0 -0 +0 +0 +0 +0))
(assert_return (invoke "i16x8.max_u" (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0)
                                     (v128.const i16x8 +0 +0 +0 +0 +0 +0 +0 +0))
                                     (v128.const i16x8 -0 -0 -0 -0 -0 -0 -0 -0))

;; Type check
(assert_invalid (module (func (result v128) (i16x8.min_s (i32.const 0) (f32.const 0.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (i16x8.min_u (i32.const 0) (f32.const 0.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (i16x8.max_s (i32.const 0) (f32.const 0.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (i16x8.max_u (i32.const 0) (f32.const 0.0)))) "type mismatch")

;; Test operation with empty argument

(assert_invalid
  (module
    (func $i16x8.min_s-1st-arg-empty (result v128)
      (i16x8.min_s (v128.const i16x8 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.min_s-arg-empty (result v128)
      (i16x8.min_s)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.min_u-1st-arg-empty (result v128)
      (i16x8.min_u (v128.const i16x8 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.min_u-arg-empty (result v128)
      (i16x8.min_u)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.max_s-1st-arg-empty (result v128)
      (i16x8.max_s (v128.const i16x8 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.max_s-arg-empty (result v128)
      (i16x8.max_s)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.max_u-1st-arg-empty (result v128)
      (i16x8.max_u (v128.const i16x8 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.max_u-arg-empty (result v128)
      (i16x8.max_u)
    )
  )
  "type mismatch"
)

;; Combination
(module
  (func (export "i16x8.min_s-i16x8.max_u") (param v128 v128 v128) (result v128) (i16x8.min_s (i16x8.max_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_s-i16x8.max_s") (param v128 v128 v128) (result v128) (i16x8.min_s (i16x8.max_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_s-i16x8.min_u") (param v128 v128 v128) (result v128) (i16x8.min_s (i16x8.min_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_s-i16x8.min_s") (param v128 v128 v128) (result v128) (i16x8.min_s (i16x8.min_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_u-i16x8.max_u") (param v128 v128 v128) (result v128) (i16x8.min_u (i16x8.max_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_u-i16x8.max_s") (param v128 v128 v128) (result v128) (i16x8.min_u (i16x8.max_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_u-i16x8.min_u") (param v128 v128 v128) (result v128) (i16x8.min_u (i16x8.min_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.min_u-i16x8.min_s") (param v128 v128 v128) (result v128) (i16x8.min_u (i16x8.min_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_s-i16x8.max_u") (param v128 v128 v128) (result v128) (i16x8.max_s (i16x8.max_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_s-i16x8.max_s") (param v128 v128 v128) (result v128) (i16x8.max_s (i16x8.max_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_s-i16x8.min_u") (param v128 v128 v128) (result v128) (i16x8.max_s (i16x8.min_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_s-i16x8.min_s") (param v128 v128 v128) (result v128) (i16x8.max_s (i16x8.min_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_u-i16x8.max_u") (param v128 v128 v128) (result v128) (i16x8.max_u (i16x8.max_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_u-i16x8.max_s") (param v128 v128 v128) (result v128) (i16x8.max_u (i16x8.max_s (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_u-i16x8.min_u") (param v128 v128 v128) (result v128) (i16x8.max_u (i16x8.min_u (local.get 0) (local.get 1))(local.get 2)))
  (func (export "i16x8.max_u-i16x8.min_s") (param v128 v128 v128) (result v128) (i16x8.max_u (i16x8.min_s (local.get 0) (local.get 1))(local.get 2)))
)

(assert_return (invoke "i16x8.min_s-i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_s-i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_s-i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_s-i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_u-i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_u-i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1))
(assert_return (invoke "i16x8.min_u-i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.min_u-i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8.max_s-i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_s-i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_s-i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_s-i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_u-i16x8.max_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_u-i16x8.max_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_u-i16x8.min_u" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
(assert_return (invoke "i16x8.max_u-i16x8.min_s" (v128.const i16x8 0 0 0 0 0 0 0 0)
                                                 (v128.const i16x8 1 1 1 1 1 1 1 1)
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
                                                 (v128.const i16x8 2 2 2 2 2 2 2 2))
