org 100h

start:
	mov ax,0013h  ; AH=00 (set video mode), Al=13h (320x200, 256 colours)
	int 10h       ;BIOS video interrupt 
	
	mov ah, 00h   ;keyboard se key ka wait 
	int 16h       ;BIOS keyboard interrupt 

	mov ax,0003h  ;text mode (80x25) wapas
	int 10h

	mov ax,4c00h
	int 21h