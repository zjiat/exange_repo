; interrupt install program

assume cs:code

code segment

start:  mov ax,cs
        mov ds,ax
        mov si,offset intruppro

        mov ax,0
        mov es,ax
        mov di,200h

        mov cx,offset intrupproend - offset intruppro

        cld
        rep movsb

        mov ax,0
        mov es,ax
        mov es:[7ch*4],200h
        mov es:[7ch*4+2],0

        mov ax, 4c00h
        int 21h

intruppro:  mul ax
            iret

intrupproend:nop

code ends

end start
