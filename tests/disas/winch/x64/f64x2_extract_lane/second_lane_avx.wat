;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result f64)
        (f64x2.extract_lane 1 (v128.const i64x2 0 1))
    )
)