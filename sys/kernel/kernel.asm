[BITS 16]
[ORG 0000h]

jmp OSMain

; ---------------------------
; Directives and Inclusions
;
;
;
; ---------------------------

; Start System

OSMain:
  call ConfigSegment
  call ConfigStack

; End Start System

; Kernel Functions
ConfigSegment:
  mov ax, es
  mov ds, ax
ret

ConfigStack:
  mov ax, 7D00h
  mov ss, ax    ; 7d00h:o3feh
  mov sp, 03FEh
ret

END:
  int 19h
; End Kernel Functions

PrintString:
  mov ah, 09h
  mov bh, [Pagination]
  mov bl, 40
  mov cx, 1
  mov al, [si]
  print:
    int 10h
    inc si
    call MoveCursor
    mov ah, 09h
    mov al, [si]
    cmp al, 0
    jne print
ret

MoveCursor:
  mov ah, 02h
  mov bh, [Pagination]
  inc dl,
  int 10h
ret

