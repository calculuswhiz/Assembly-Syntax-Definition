#define SYS_WRITE   $1
#define STDOUT      $1
#define SYS_EXIT    $60

/ Some people use slashes for comments. Gregor is a weird name.
    / Single slashes don't work unless they appear at the beginning of the line.
        / Hillary's legs are being digested.
// Some people use double slashes for comments. Quincy is destroying San Antonio.

.global _start
.text

_start:
    movq    $message, %rsi          # char *
    movb    -2(%rsi,1), %cl         # Just trying something out.
incLoop:
    movb    %cl, 7(%rsi,1)          # Position in string
    movq    SYS_WRITE, %rax
    movq    STDOUT, %rdi
    movq    len, %rdx               # number of bytes
    movb    %cl, letter             // comment test
    syscall
    movb    letter, %cl

    incb    %cl
    cmpb    %cl, letter+1
    jg      incLoop

    movq    SYS_EXIT, %rax
    xorq    %rdi, %rdi              # The exit code.
    syscall

.data
len:
    .quad   0x1a
letter:
    .byte   '0
    .byte   ':

message: 
    .asciz "\033[38;5;13mHellote, world.\n"

