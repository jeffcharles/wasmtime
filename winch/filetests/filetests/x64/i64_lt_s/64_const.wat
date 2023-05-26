;;! target = "x86_64"

(module
    (func (result i32)
        (i64.const 9223372036854775806)
        (i64.const 9223372036854775807)
        (i64.lt_s)
    )
)

;;    0:	 55                   	push	rbp
;;    1:	 4889e5               	mov	rbp, rsp
;;    4:	 4883ec08             	sub	rsp, 8
;;    8:	 4c893424             	mov	qword ptr [rsp], r14
;;    c:	 48b8feffffffffffff7f 	
;; 				movabs	rax, 0x7ffffffffffffffe
;;   16:	 49bbffffffffffffff7f 	
;; 				movabs	r11, 0x7fffffffffffffff
;;   20:	 4c39d8               	cmp	rax, r11
;;   23:	 48c7c000000000       	mov	rax, 0
;;   2a:	 400f9cc0             	setl	al
;;   2e:	 4883c408             	add	rsp, 8
;;   32:	 5d                   	pop	rbp
;;   33:	 c3                   	ret	
