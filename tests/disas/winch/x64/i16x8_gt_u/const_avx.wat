;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result v128)
        (i16x8.gt_u (v128.const i16x8 7 6 5 4 3 2 1 0) (v128.const i16x8 0 1 2 3 4 5 6 7))
    )
)