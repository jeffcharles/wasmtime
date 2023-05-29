;;! target = "x86_64"

(module
    (func (result i32)
        (i32.const 2)
        (i32.const 3)
        (i32.le_s)
    )
)
;;    0:	 55                   	push	rbp
;;    1:	 4889e5               	mov	rbp, rsp
;;    4:	 4883ec08             	sub	rsp, 8
;;    8:	 4c893424             	mov	qword ptr [rsp], r14
;;    c:	 48c7c003000000       	mov	rax, 3
;;   13:	 48c7c102000000       	mov	rcx, 2
;;   1a:	 4839c1               	cmp	rcx, rax
;;   1d:	 b900000000           	mov	ecx, 0
;;   22:	 400f9ec1             	setle	cl
;;   26:	 4889c8               	mov	rax, rcx
;;   29:	 4883c408             	add	rsp, 8
;;   2d:	 5d                   	pop	rbp
;;   2e:	 c3                   	ret	
