;;! target = "x86_64"

(module
    (func (result i32)
        (local $foo i64)
        (local $bar i64)

        (i64.const 2)
        (local.set $foo)
        (i64.const 3)
        (local.set $bar)

        (local.get $foo)
        (local.get $bar)
        (i64.eq)
    )
)
;;    0:	 55                   	push	rbp
;;    1:	 4889e5               	mov	rbp, rsp
;;    4:	 4883ec18             	sub	rsp, 0x18
;;    8:	 4531db               	xor	r11d, r11d
;;    b:	 4c895c2410           	mov	qword ptr [rsp + 0x10], r11
;;   10:	 4c895c2408           	mov	qword ptr [rsp + 8], r11
;;   15:	 4c893424             	mov	qword ptr [rsp], r14
;;   19:	 48c7c002000000       	mov	rax, 2
;;   20:	 4889442410           	mov	qword ptr [rsp + 0x10], rax
;;   25:	 48c7c003000000       	mov	rax, 3
;;   2c:	 4889442408           	mov	qword ptr [rsp + 8], rax
;;   31:	 488b442408           	mov	rax, qword ptr [rsp + 8]
;;   36:	 488b4c2410           	mov	rcx, qword ptr [rsp + 0x10]
;;   3b:	 4839c1               	cmp	rcx, rax
;;   3e:	 48c7c100000000       	mov	rcx, 0
;;   45:	 400f94c1             	sete	cl
;;   49:	 4889c8               	mov	rax, rcx
;;   4c:	 4883c418             	add	rsp, 0x18
;;   50:	 5d                   	pop	rbp
;;   51:	 c3                   	ret	
