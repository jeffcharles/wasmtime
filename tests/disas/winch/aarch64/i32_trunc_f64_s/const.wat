;;! target = "aarch64"
;;! test = "winch"

(module
    (func (result i32)
        (f64.const 1.0)
        (i32.trunc_f64_s)
    )
)
;; wasm[0]::function[0]:
;;       stp     x29, x30, [sp, #-0x10]!
;;       mov     x29, sp
;;       mov     x28, sp
;;       mov     x9, x0
;;       sub     sp, sp, #0x10
;;       mov     x28, sp
;;       stur    x0, [x28, #8]
;;       stur    x1, [x28]
;;       mov     x16, #0x3ff0000000000000
;;       fmov    d0, x16
;;       fcmp    d0, d0
;;       b.vs    #0x68
;;   30: mov     x16, #0x200000
;;       movk    x16, #0xc1e0, lsl #48
;;       fmov    d31, x16
;;       fcmp    d31, d0
;;       b.le    #0x6c
;;   44: mov     x16, #0x41e0000000000000
;;       fmov    d31, x16
;;       fcmp    d31, d0
;;       b.ge    #0x70
;;   54: fcvtzs  w0, d0
;;       add     sp, sp, #0x10
;;       mov     x28, sp
;;       ldp     x29, x30, [sp], #0x10
;;       ret
;;   68: .byte   0x1f, 0xc1, 0x00, 0x00
;;   6c: .byte   0x1f, 0xc1, 0x00, 0x00
;;   70: .byte   0x1f, 0xc1, 0x00, 0x00