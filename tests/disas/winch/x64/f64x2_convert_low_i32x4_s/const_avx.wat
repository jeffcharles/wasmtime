;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result v128)
        (f64x2.convert_low_i32x4_s (v128.const i64x2 1 0))
    )
)