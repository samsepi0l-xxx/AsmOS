[BITS 16]
[ORG 0x7C00]

call HelloWorld ;primeira forma
call JumpLine

call PointerString ;segunda forma
call PrintString

call PointerBuffer ;; terceira forma
call ReadBuffer
call PointerStringBuffer
call PrintString
jmp $

HelloWorld:
  mov ah, 0eh ; AH + AL = AX
  mov al, 48h
  int 10h
  mov al, 65h
  int 10h
  mov al, 6ch
  int 10h
  mov al, 6ch
  int 10h
  mov al, 20h
  int 10h
  mov al, 57h
  int 10h
  mov al, 6fh
  int 10h
  mov al, 72h
  int 10h
  mov al, 6ch
  int 10h
  mov al, 64h
  int 10h
  ret

JumpLine:
  mov ah, 0eh
  mov al, 0ah
  int 10h
  mov al, 0dh
  int 10h
  ret

PointerString:
  mov si, hello
  ret

PointerStringBuffer:
  mov si, buffer
  ret

PointerBuffer:
  mov di, buffer
  ret

PrintString:
  mov ah, 0eh
  mov al, [si]
  print:
    int 10h
    inc si
    mov al, [si]
    cmp al, 0
    jne print
  ret

ReadBuffer:
  mov ah, 00h
  int 16h
  mov ah, 0eh
  int 10h
  mov [di], al
  inc di
  cmp al, 0dh
  jne ReadBuffer
  mov ah, 0eh
  mov al, 0ah
  int 10h
  ret

hello db "Hello World!",13,10,0
buffer times 20 db 0

times 510 - ($-$$) db 0
dw 0xAA55
