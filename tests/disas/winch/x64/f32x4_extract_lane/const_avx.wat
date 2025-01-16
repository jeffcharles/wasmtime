;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result f32)
        (f32x4.extract_lane 1 (v128.const i32x4 0 1 2 3))
    )
)