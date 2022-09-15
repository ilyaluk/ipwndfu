.text

.pool
.set platform_set_dfu_status_func, 0xBAD00001
.set force_dfu_sbfx_addr, 0xBAD00002
.set trampoline_code_addr, 0xBAD00003
.set memcpy_func, 0xBAD00004
.set placeholder, 0x1234


.globl _main
_main:
    MOV X17, X30
    BL _setup_placeholder
    BL _set_dfu_status
    BL _setup_trampoline
    BL _boot
    B _end


_setup_placeholder:
    MOV X16, X30
    LDR X0, =_placeholder_tramp
    LDR X1, =placeholder
    STR X0, [x1]
    MOV X30, X16
    RET

_placeholder_tramp:
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP

_set_dfu_status:
    MOV X16, X30
    MOV X0, #0x0
    LDR X5, =platform_set_dfu_status_func
    BLR X5
    LDR W5, [X8,W9,UXTW]
    AND W5, W5, #0xFFFFFFFC
    STR W5, [X8,W9,UXTW]
    MOV X30, X16
    RET


_boot:
    MOV X16, X30
    LDR X5, =force_dfu_sbfx_addr
    MOV X0, #0x0
    BLR X5
    MOV X30, X16

_setup_trampoline:
    MOV X16, X30
    LDR X1, =trampoline_code_addr
    LDR X5, =memcpy_func
    LDR X2, #0x174
    BLR X5
    MOV X30, X16
    RET

_end:
    MOV X30, X17
    RET