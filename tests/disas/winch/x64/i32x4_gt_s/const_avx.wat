;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result v128)
        (i32x4.gt_s (v128.const i32x4 3 2 1 0) (v128.const i32x4 0 1 2 3))
    )
)