    movq    rSELF, OUT_ARG0
    testl   $$(THREAD_SUSPEND_OR_CHECKPOINT_REQUEST), THREAD_FLAGS_OFFSET(OUT_ARG0)
    jz      1f
    call    SYMBOL(MterpSuspendCheck)
1:
    xorq    %rax, %rax
    jmp     MterpReturn
