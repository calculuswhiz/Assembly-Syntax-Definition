#define SYS_READ    $0
#define STDIN       $0
#define SYS_WRITE   $1
#define STDOUT      $1

#define SYS_EXIT    $60

#define LENGTH      0x7f

.global _start
.text

_start:
    /* Entry Point: */
    movq    SYS_WRITE, %rax
    movq    STDOUT, %rdi
    movq    $prompt, %rsi
    movq    $22, %rdx
    syscall

getbuf:
    movq    SYS_READ, %rax
    movq    STDIN, %rdi
    movq    $buf, %rsi
    movzx   len, %rdx
    syscall

    cmpb    len, %al
    jl      print

    decq    %rax
    movb    buf(,%rax,1), %bl
    cmpb    $'\n, %bl
    je      print

    movq    $LENGTH, %rax
    movb    $'\n, buf(,%rax,1)
    movb    $(LENGTH+1), len
clearstdin:
    movq    SYS_READ, %rax
    movq    STDIN, %rdi 
    movq    $junkChar, %rsi 
    movq    $1, %rdx
    syscall
    cmpb    $'\n, junkChar
    jne     clearstdin

print:
    movq    SYS_WRITE, %rax
    movq    STDOUT, %rdi
    movq    $message, %rsi
    movzx   len, %rdx           # Intro+echo
    addq    $27, %rdx
    syscall


exit:
    movq    SYS_EXIT, %rax
    xorq    %rdi, %rdi              # The exit code.
    syscall

.data
    /* Begin Data Section: */
prompt:
    .ascii  "Echo up to 128 bytes: "
len:
    .byte   LENGTH
message:
    .ascii  "\033[38;5;01mEcho > \033[38;5;99m"
buf:
    .rept   (LENGTH+1)
    .byte   0
    .endr
junkChar:
    .byte   0
