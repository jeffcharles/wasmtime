;; Test all the f32 bitwise operators on major boundary values and all special
;; values.

(module
  (func (export "abs") (param $x f32) (result f32) (f32.abs (local.get $x)))
  (func (export "neg") (param $x f32) (result f32) (f32.neg (local.get $x)))
  (func (export "copysign") (param $x f32) (param $y f32) (result f32) (f32.copysign (local.get $x) (local.get $y)))
)

(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1p-149)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1p-149)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1p-149)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1p-149)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1p-126)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1p-126)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1p-126)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1p-126)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1p-1)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1p-1)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1p-1)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1p-1)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1p+0)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1p+0)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1p+0)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1p+0)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -inf)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const inf)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -inf)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const inf)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const -nan)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x0p+0) (f32.const nan)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const -nan)) (f32.const -0x0p+0))
(assert_return (invoke "copysign" (f32.const 0x0p+0) (f32.const nan)) (f32.const 0x0p+0))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x0p+0)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x0p+0)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x0p+0)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x0p+0)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1p-149)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1p-149)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1p-149)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1p-149)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1p-126)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1p-126)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1p-126)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1p-126)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1p-1)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1p-1)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1p-1)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1p-1)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1p+0)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1p+0)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1p+0)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1p+0)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -inf)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const inf)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -inf)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const inf)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const -nan)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-149) (f32.const nan)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const -nan)) (f32.const -0x1p-149))
(assert_return (invoke "copysign" (f32.const 0x1p-149) (f32.const nan)) (f32.const 0x1p-149))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x0p+0)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x0p+0)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x0p+0)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x0p+0)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1p-149)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1p-149)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1p-149)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1p-149)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1p-126)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1p-126)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1p-126)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1p-126)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1p-1)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1p-1)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1p-1)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1p-1)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1p+0)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1p+0)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1p+0)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1p+0)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -inf)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const inf)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -inf)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const inf)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const -nan)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-126) (f32.const nan)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const -nan)) (f32.const -0x1p-126))
(assert_return (invoke "copysign" (f32.const 0x1p-126) (f32.const nan)) (f32.const 0x1p-126))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x0p+0)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x0p+0)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x0p+0)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x0p+0)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1p-149)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1p-149)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1p-149)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1p-149)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1p-126)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1p-126)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1p-126)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1p-126)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1p-1)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1p-1)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1p-1)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1p-1)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1p+0)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1p+0)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1p+0)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1p+0)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -inf)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const inf)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -inf)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const inf)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const -nan)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p-1) (f32.const nan)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const -nan)) (f32.const -0x1p-1))
(assert_return (invoke "copysign" (f32.const 0x1p-1) (f32.const nan)) (f32.const 0x1p-1))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x0p+0)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x0p+0)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x0p+0)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x0p+0)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1p-149)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1p-149)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1p-149)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1p-149)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1p-126)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1p-126)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1p-126)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1p-126)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1p-1)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1p-1)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1p-1)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1p-1)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -inf)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const inf)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -inf)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const inf)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const -nan)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1p+0) (f32.const nan)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const -nan)) (f32.const -0x1p+0))
(assert_return (invoke "copysign" (f32.const 0x1p+0) (f32.const nan)) (f32.const 0x1p+0))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -inf)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const inf)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -inf)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const inf)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const -nan)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.921fb6p+2) (f32.const nan)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const -nan)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const 0x1.921fb6p+2) (f32.const nan)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -inf)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const inf)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -inf)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const inf)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const -nan)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -0x1.fffffep+127) (f32.const nan)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const -nan)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const 0x1.fffffep+127) (f32.const nan)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x0p+0)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x0p+0)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x0p+0)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x0p+0)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1p-149)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1p-149)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1p-149)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1p-149)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1p-126)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1p-126)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1p-126)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1p-126)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1p-1)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1p-1)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1p-1)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1p-1)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1p+0)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1p+0)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1p+0)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1p+0)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1.921fb6p+2)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1.921fb6p+2)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1.921fb6p+2)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1.921fb6p+2)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -0x1.fffffep+127)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const 0x1.fffffep+127)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -0x1.fffffep+127)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const 0x1.fffffep+127)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const inf)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const -nan)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const -inf) (f32.const nan)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const -nan)) (f32.const -inf))
(assert_return (invoke "copysign" (f32.const inf) (f32.const nan)) (f32.const inf))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x0p+0)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x0p+0)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x0p+0)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x0p+0)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1p-149)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1p-149)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1p-149)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1p-149)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1p-126)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1p-126)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1p-126)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1p-126)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1p-1)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1p-1)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1p-1)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1p-1)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1p+0)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1p+0)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1p+0)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1p+0)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1.921fb6p+2)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1.921fb6p+2)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1.921fb6p+2)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1.921fb6p+2)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -0x1.fffffep+127)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const 0x1.fffffep+127)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -0x1.fffffep+127)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const 0x1.fffffep+127)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -inf)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const inf)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -inf)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const inf)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const -nan)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const -nan) (f32.const nan)) (f32.const nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const -nan)) (f32.const -nan))
(assert_return (invoke "copysign" (f32.const nan) (f32.const nan)) (f32.const nan))
(assert_return (invoke "abs" (f32.const -0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "abs" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "abs" (f32.const -0x1p-149)) (f32.const 0x1p-149))
(assert_return (invoke "abs" (f32.const 0x1p-149)) (f32.const 0x1p-149))
(assert_return (invoke "abs" (f32.const -0x1p-126)) (f32.const 0x1p-126))
(assert_return (invoke "abs" (f32.const 0x1p-126)) (f32.const 0x1p-126))
(assert_return (invoke "abs" (f32.const -0x1p-1)) (f32.const 0x1p-1))
(assert_return (invoke "abs" (f32.const 0x1p-1)) (f32.const 0x1p-1))
(assert_return (invoke "abs" (f32.const -0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "abs" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "abs" (f32.const -0x1.921fb6p+2)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "abs" (f32.const 0x1.921fb6p+2)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "abs" (f32.const -0x1.fffffep+127)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "abs" (f32.const 0x1.fffffep+127)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "abs" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "abs" (f32.const inf)) (f32.const inf))
(assert_return (invoke "abs" (f32.const -nan)) (f32.const nan))
(assert_return (invoke "abs" (f32.const nan)) (f32.const nan))
(assert_return (invoke "neg" (f32.const -0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "neg" (f32.const 0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "neg" (f32.const -0x1p-149)) (f32.const 0x1p-149))
(assert_return (invoke "neg" (f32.const 0x1p-149)) (f32.const -0x1p-149))
(assert_return (invoke "neg" (f32.const -0x1p-126)) (f32.const 0x1p-126))
(assert_return (invoke "neg" (f32.const 0x1p-126)) (f32.const -0x1p-126))
(assert_return (invoke "neg" (f32.const -0x1p-1)) (f32.const 0x1p-1))
(assert_return (invoke "neg" (f32.const 0x1p-1)) (f32.const -0x1p-1))
(assert_return (invoke "neg" (f32.const -0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "neg" (f32.const 0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "neg" (f32.const -0x1.921fb6p+2)) (f32.const 0x1.921fb6p+2))
(assert_return (invoke "neg" (f32.const 0x1.921fb6p+2)) (f32.const -0x1.921fb6p+2))
(assert_return (invoke "neg" (f32.const -0x1.fffffep+127)) (f32.const 0x1.fffffep+127))
(assert_return (invoke "neg" (f32.const 0x1.fffffep+127)) (f32.const -0x1.fffffep+127))
(assert_return (invoke "neg" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "neg" (f32.const inf)) (f32.const -inf))
(assert_return (invoke "neg" (f32.const -nan)) (f32.const nan))
(assert_return (invoke "neg" (f32.const nan)) (f32.const -nan))


;; Type check

(assert_invalid (module (func (result f32) (f32.abs (i64.const 0)))) "type mismatch")
(assert_invalid (module (func (result f32) (f32.neg (i64.const 0)))) "type mismatch")
