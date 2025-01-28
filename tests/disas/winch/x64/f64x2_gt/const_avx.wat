;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result v128)
        (f64x2.gt (v128.const i64x2 1 0) (v128.const i64x2 0 1))
    )
)