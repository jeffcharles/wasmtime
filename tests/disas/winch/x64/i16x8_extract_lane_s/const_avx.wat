;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result i32)
        (i16x8.extract_lane_s 1 (v128.const i16x8 0 1 2 3 4 5 6 7))
    )
)