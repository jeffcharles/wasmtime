;;! target = "riscv64"
;;! test = "compile"
;;! flags = " -C cranelift-enable-heap-access-spectre-mitigation -O static-memory-forced -O static-memory-guard-size=0 -O dynamic-memory-guard-size=0"

;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !!! GENERATED BY 'make-load-store-tests.sh' DO NOT EDIT !!!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

(module
  (memory i32 1)

  (func (export "do_store") (param i32 i32)
    local.get 0
    local.get 1
    i32.store offset=0)

  (func (export "do_load") (param i32) (result i32)
    local.get 0
    i32.load offset=0))

;; wasm[0]::function[0]:
;;       addi    sp, sp, -0x10
;;       sd      ra, 8(sp)
;;       sd      s0, 0(sp)
;;       mv      s0, sp
;;       slli    a1, a2, 0x20
;;       srli    a4, a1, 0x20
;;       lui     a1, 0x40000
;;       addi    a2, a1, -1
;;       slli    a5, a2, 2
;;       sltu    a2, a5, a4
;;       ld      a5, 0x50(a0)
;;       add     a4, a5, a4
;;       neg     a0, a2
;;       not     a2, a0
;;       and     a4, a4, a2
;;       sw      a3, 0(a4)
;;       ld      ra, 8(sp)
;;       ld      s0, 0(sp)
;;       addi    sp, sp, 0x10
;;       ret
;;
;; wasm[0]::function[1]:
;;       addi    sp, sp, -0x10
;;       sd      ra, 8(sp)
;;       sd      s0, 0(sp)
;;       mv      s0, sp
;;       slli    a1, a2, 0x20
;;       srli    a3, a1, 0x20
;;       lui     a1, 0x40000
;;       addi    a2, a1, -1
;;       slli    a4, a2, 2
;;       sltu    a2, a4, a3
;;       ld      a4, 0x50(a0)
;;       add     a3, a4, a3
;;       neg     a0, a2
;;       not     a2, a0
;;       and     a4, a3, a2
;;       lw      a0, 0(a4)
;;       ld      ra, 8(sp)
;;       ld      s0, 0(sp)
;;       addi    sp, sp, 0x10
;;       ret
