;;! target = "x86_64"

(module
    (func (result i32)
        (i64.const 2)
        (i64.const 3)
        (i64.eq)
    )
)
;;    0:	 55                   	push	rbp
;;    1:	 4889e5               	mov	rbp, rsp
;;    4:	 4883ec08             	sub	rsp, 8
;;    8:	 4c893424             	mov	qword ptr [rsp], r14
;;    c:	 48c7c002000000       	mov	rax, 2
;;   13:	 4883f803             	cmp	rax, 3
;;   17:	 48c7c000000000       	mov	rax, 0
;;   1e:	 400f94c0             	sete	al
;;   22:	 4883c408             	add	rsp, 8
;;   26:	 5d                   	pop	rbp
;;   27:	 c3                   	ret	
