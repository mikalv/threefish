; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\odzhan\threefish\threefish.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_shl64
; Function compile flags: /Ogspy
;	COMDAT _shl64
_TEXT	SEGMENT
_v$ = 8							; size = 8
_n$ = 16						; size = 4
_shl64	PROC						; COMDAT
; File c:\odzhan\threefish\threefish.c
; Line 39
	push	ebp
	mov	ebp, esp
	push	esi
; Line 47
	mov	esi, DWORD PTR _n$[ebp]
	xor	eax, eax
	xor	edx, edx
	cmp	esi, 64					; 00000040H
	jae	SHORT $LN1@shl64
; Line 49
	test	esi, esi
	jne	SHORT $LN4@shl64
; Line 50
	mov	eax, DWORD PTR _v$[ebp]
	mov	edx, DWORD PTR _v$[ebp+4]
	jmp	SHORT $LN1@shl64
$LN4@shl64:
; Line 52
	mov	edx, DWORD PTR _v$[ebp]
	mov	ecx, esi
	cmp	esi, 32					; 00000020H
	jae	SHORT $LN2@shl64
; Line 53
	push	edi
	mov	edi, DWORD PTR _v$[ebp+4]
	mov	eax, edx
	shl	eax, cl
; Line 54
	push	32					; 00000020H
	pop	ecx
	sub	ecx, esi
	shr	edx, cl
	mov	ecx, esi
	shl	edi, cl
	or	edx, edi
	pop	edi
; Line 55
	jmp	SHORT $LN1@shl64
$LN2@shl64:
; Line 57
	and	ecx, 31					; 0000001fH
	xor	eax, eax
	shl	edx, cl
$LN1@shl64:
	pop	esi
; Line 61
	pop	ebp
	ret	0
_shl64	ENDP
_TEXT	ENDS
PUBLIC	_shr64
; Function compile flags: /Ogspy
;	COMDAT _shr64
_TEXT	SEGMENT
_v$ = 8							; size = 8
_n$ = 16						; size = 4
_shr64	PROC						; COMDAT
; Line 64
	push	ebp
	mov	ebp, esp
	push	edi
; Line 72
	mov	edi, DWORD PTR _n$[ebp]
	xor	eax, eax
	xor	edx, edx
	cmp	edi, 64					; 00000040H
	jae	SHORT $LN1@shr64
; Line 74
	test	edi, edi
	jne	SHORT $LN4@shr64
; Line 75
	mov	eax, DWORD PTR _v$[ebp]
	mov	edx, DWORD PTR _v$[ebp+4]
	jmp	SHORT $LN1@shr64
$LN4@shr64:
; Line 77
	mov	ecx, edi
	cmp	edi, 32					; 00000020H
	jae	SHORT $LN2@shr64
	mov	eax, DWORD PTR _v$[ebp]
	push	esi
; Line 78
	mov	esi, DWORD PTR _v$[ebp+4]
	mov	edx, esi
	shr	eax, cl
	shr	edx, cl
; Line 79
	push	32					; 00000020H
	pop	ecx
	sub	ecx, edi
	shl	esi, cl
	or	eax, esi
	pop	esi
; Line 80
	jmp	SHORT $LN1@shr64
$LN2@shr64:
; Line 82
	mov	eax, DWORD PTR _v$[ebp+4]
	and	ecx, 31					; 0000001fH
	xor	edx, edx
	shr	eax, cl
$LN1@shr64:
	pop	edi
; Line 86
	pop	ebp
	ret	0
_shr64	ENDP
_TEXT	ENDS
PUBLIC	_XROTL64
; Function compile flags: /Ogspy
;	COMDAT _XROTL64
_TEXT	SEGMENT
_v$ = 8							; size = 8
_n$ = 16						; size = 4
_XROTL64 PROC						; COMDAT
; Line 89
	push	ebp
	mov	ebp, esp
	push	esi
	push	edi
; Line 90
	push	64					; 00000040H
	pop	eax
	sub	eax, DWORD PTR _n$[ebp]
	push	eax
	push	DWORD PTR _v$[ebp+4]
	push	DWORD PTR _v$[ebp]
	call	_shr64
	push	DWORD PTR _n$[ebp]
	mov	esi, eax
	push	DWORD PTR _v$[ebp+4]
	mov	edi, edx
	push	DWORD PTR _v$[ebp]
	call	_shl64
	add	esp, 24					; 00000018H
	or	eax, esi
	or	edx, edi
	pop	edi
	pop	esi
; Line 91
	pop	ebp
	ret	0
_XROTL64 ENDP
_TEXT	ENDS
PUBLIC	_XROTR64
; Function compile flags: /Ogspy
;	COMDAT _XROTR64
_TEXT	SEGMENT
_v$ = 8							; size = 8
_n$ = 16						; size = 4
_XROTR64 PROC						; COMDAT
; Line 94
	push	ebp
	mov	ebp, esp
	push	esi
	push	edi
; Line 95
	push	64					; 00000040H
	pop	eax
	sub	eax, DWORD PTR _n$[ebp]
	push	eax
	push	DWORD PTR _v$[ebp+4]
	push	DWORD PTR _v$[ebp]
	call	_shl64
	push	DWORD PTR _n$[ebp]
	mov	esi, eax
	push	DWORD PTR _v$[ebp+4]
	mov	edi, edx
	push	DWORD PTR _v$[ebp]
	call	_shr64
	add	esp, 24					; 00000018H
	or	eax, esi
	or	edx, edi
	pop	edi
	pop	esi
; Line 96
	pop	ebp
	ret	0
_XROTR64 ENDP
_TEXT	ENDS
PUBLIC	_mix
; Function compile flags: /Ogspy
;	COMDAT _mix
_TEXT	SEGMENT
_data$ = 8						; size = 4
_rot$ = 12						; size = 1
_enc$ = 16						; size = 4
_mix	PROC						; COMDAT
; Line 101
	push	ebp
	mov	ebp, esp
; Line 104
	cmp	DWORD PTR _enc$[ebp], 0
	push	esi
; Line 106
	mov	esi, DWORD PTR _data$[ebp]
	jne	SHORT $LN2@mix
; Line 107
	movzx	edx, BYTE PTR _rot$[ebp]
	mov	eax, DWORD PTR [esi+8]
	mov	ecx, DWORD PTR [esi+12]
	add	DWORD PTR [esi], eax
	push	edx
	push	ecx
	adc	DWORD PTR [esi+4], ecx
	push	eax
	call	_XROTL64
	xor	eax, DWORD PTR [esi]
	add	esp, 12					; 0000000cH
	xor	edx, DWORD PTR [esi+4]
; Line 108
	jmp	SHORT $LN5@mix
$LN2@mix:
; Line 110
	movzx	eax, BYTE PTR _rot$[ebp]
	push	ebx
	mov	ebx, DWORD PTR [esi+4]
	xor	DWORD PTR [esi+12], ebx
	push	edi
	mov	edi, DWORD PTR [esi]
	xor	DWORD PTR [esi+8], edi
	push	eax
	push	DWORD PTR [esi+12]
	push	DWORD PTR [esi+8]
	call	_XROTR64
	add	esp, 12					; 0000000cH
; Line 111
	sub	edi, eax
	sbb	ebx, edx
	mov	DWORD PTR [esi], edi
	pop	edi
	mov	DWORD PTR [esi+4], ebx
	pop	ebx
$LN5@mix:
; Line 110
	mov	DWORD PTR [esi+12], edx
	mov	DWORD PTR [esi+8], eax
	pop	esi
; Line 113
	pop	ebp
	ret	0
_mix	ENDP
_TEXT	ENDS
PUBLIC	_threefish_setkey
; Function compile flags: /Ogspy
;	COMDAT _threefish_setkey
_TEXT	SEGMENT
_c$ = 8							; size = 4
_key$ = 12						; size = 4
_tweak$ = 16						; size = 4
_threefish_setkey PROC					; COMDAT
; Line 125
	mov	eax, DWORD PTR _c$[esp-4]
	push	esi
	mov	esi, DWORD PTR _key$[esp]
	push	edi
	push	8
	pop	ecx
	mov	edi, eax
	rep movsd
; Line 126
	mov	ecx, DWORD PTR _tweak$[esp+4]
	mov	esi, ecx
	lea	edi, DWORD PTR [eax+64]
	movsd
	movsd
	movsd
	movsd
; Line 128
	mov	edx, DWORD PTR [ecx+8]
	xor	edx, DWORD PTR [ecx]
	mov	esi, DWORD PTR [ecx+12]
	xor	esi, DWORD PTR [ecx+4]
	mov	ecx, DWORD PTR _key$[esp+4]
	push	4
	mov	DWORD PTR [eax+80], edx
	mov	DWORD PTR [eax+84], esi
; Line 130
	mov	DWORD PTR [eax+32], -1443096030		; a9fc1a22H
	mov	DWORD PTR [eax+36], 466688986		; 1bd11bdaH
	pop	edx
$LL3@threefish_:
; Line 133
	mov	esi, DWORD PTR [ecx]
	xor	DWORD PTR [eax+32], esi
	mov	esi, DWORD PTR [ecx+4]
	xor	DWORD PTR [eax+36], esi
	add	ecx, 8
	dec	edx
	jne	SHORT $LL3@threefish_
; Line 135
	pop	edi
	pop	esi
	ret	0
_threefish_setkey ENDP
_TEXT	ENDS
PUBLIC	_permute
; Function compile flags: /Ogspy
;	COMDAT _permute
_TEXT	SEGMENT
_data$ = 8						; size = 4
_permute PROC						; COMDAT
; Line 142
	mov	eax, DWORD PTR _data$[esp-4]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [eax+12]
	push	esi
; Line 143
	mov	esi, DWORD PTR [eax+24]
	mov	DWORD PTR [eax+8], esi
	mov	esi, DWORD PTR [eax+28]
	mov	DWORD PTR [eax+12], esi
; Line 144
	mov	DWORD PTR [eax+24], ecx
	mov	DWORD PTR [eax+28], edx
	pop	esi
; Line 145
	ret	0
_permute ENDP
_TEXT	ENDS
PUBLIC	_addkey
; Function compile flags: /Ogspy
;	COMDAT _addkey
_TEXT	SEGMENT
_x1$ = -24						; size = 8
tv189 = -16						; size = 8
_x2$ = -8						; size = 8
_data$ = 8						; size = 4
_c$ = 12						; size = 4
_s$ = 16						; size = 1
_enc$ = 20						; size = 8
_addkey	PROC						; COMDAT
; Line 154
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
; Line 158
	mov	eax, DWORD PTR _enc$[ebp]
	push	ebx
	push	esi
	mov	esi, DWORD PTR _c$[ebp]
	push	edi
	xor	edi, edi
	neg	eax
	mov	DWORD PTR tv189[ebp], eax
	mov	eax, DWORD PTR _enc$[ebp+4]
	adc	eax, edi
	neg	eax
	mov	DWORD PTR tv189[ebp+4], eax
$LL6@addkey:
; Line 159
	mov	eax, DWORD PTR _data$[ebp]
	lea	ecx, DWORD PTR [eax+edi*8]
; Line 160
	movzx	eax, BYTE PTR _s$[ebp]
	add	eax, edi
	cdq
	push	5
	pop	ebx
	idiv	ebx
; Line 161
	and	DWORD PTR _x2$[ebp], 0
	and	DWORD PTR _x2$[ebp+4], 0
	mov	eax, DWORD PTR [esi+edx*8]
	mov	DWORD PTR _x1$[ebp], eax
	mov	eax, DWORD PTR [esi+edx*8+4]
	mov	DWORD PTR _x1$[ebp+4], eax
; Line 162
	cmp	edi, 1
	jne	SHORT $LN3@addkey
	movzx	eax, BYTE PTR _s$[ebp]
	cdq
	push	3
	pop	ebx
	idiv	ebx
	mov	eax, DWORD PTR [esi+edx*8+64]
	mov	DWORD PTR _x2$[ebp], eax
	mov	eax, DWORD PTR [esi+edx*8+68]
	mov	DWORD PTR _x2$[ebp+4], eax
$LN3@addkey:
; Line 163
	cmp	edi, 2
	jne	SHORT $LN2@addkey
	movzx	eax, BYTE PTR _s$[ebp]
	inc	eax
	cdq
	push	3
	pop	ebx
	idiv	ebx
	mov	eax, DWORD PTR [esi+edx*8+64]
	mov	DWORD PTR _x2$[ebp], eax
	mov	eax, DWORD PTR [esi+edx*8+68]
	mov	DWORD PTR _x2$[ebp+4], eax
$LN2@addkey:
; Line 164
	cmp	edi, 3
	jne	SHORT $LN1@addkey
	movzx	eax, BYTE PTR _s$[ebp]
	cdq
	mov	DWORD PTR _x2$[ebp], eax
	mov	DWORD PTR _x2$[ebp+4], edx
$LN1@addkey:
; Line 165
	mov	eax, DWORD PTR tv189[ebp]
	xor	eax, DWORD PTR [ecx]
	mov	edx, DWORD PTR tv189[ebp+4]
	xor	edx, DWORD PTR [ecx+4]
	add	eax, DWORD PTR _x2$[ebp]
	adc	edx, DWORD PTR _x2$[ebp+4]
	add	eax, DWORD PTR _x1$[ebp]
	adc	edx, DWORD PTR _x1$[ebp+4]
	xor	eax, DWORD PTR tv189[ebp]
	xor	edx, DWORD PTR tv189[ebp+4]
	inc	edi
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	cmp	edi, 4
	jl	$LL6@addkey
	pop	edi
	pop	esi
	pop	ebx
; Line 167
	leave
	ret	0
_addkey	ENDP
_TEXT	ENDS
PUBLIC	_threefish_encrypt
; Function compile flags: /Ogspy
;	COMDAT _threefish_encrypt
_TEXT	SEGMENT
_r1$ = -28						; size = 8
_r0$ = -20						; size = 8
tv292 = -12						; size = 4
_s$ = -5						; size = 1
_ofs$ = -1						; size = 1
_c$ = 8							; size = 4
_data$ = 12						; size = 4
_enc$ = 16						; size = 4
_i$ = 19						; size = 1
_threefish_encrypt PROC					; COMDAT
; Line 173
	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	push	ebx
; Line 181
	mov	ebx, DWORD PTR _enc$[ebp]
	push	esi
	push	edi
	mov	BYTE PTR _s$[ebp], 0
	mov	BYTE PTR _ofs$[ebp], 1
	mov	DWORD PTR _r0$[ebp], 85406734		; 0517340eH
	mov	DWORD PTR _r0$[ebp+4], 540683801	; 203a2e19H
	mov	DWORD PTR _r1$[ebp], 623393040		; 25283910H
	mov	DWORD PTR _r1$[ebp+4], 538315809	; 20160c21H
	cmp	ebx, 1
	jne	SHORT $LN7@threefish_@2
; Line 187
	mov	eax, DWORD PTR _r0$[ebp+4]
; Line 189
	mov	ecx, DWORD PTR _r0$[ebp]
	bswap	ecx
; Line 190
	bswap	eax
	mov	DWORD PTR _r0$[ebp+4], ecx
; Line 196
	mov	ecx, DWORD PTR _r1$[ebp]
	mov	DWORD PTR _r0$[ebp], eax
	mov	eax, DWORD PTR _r1$[ebp+4]
	bswap	ecx
; Line 197
	bswap	eax
	mov	BYTE PTR _s$[ebp], 18			; 00000012H
	mov	BYTE PTR _ofs$[ebp], 255		; 000000ffH
	mov	DWORD PTR _r1$[ebp+4], ecx
	mov	DWORD PTR _r1$[ebp], eax
$LN7@threefish_@2:
; Line 199
	mov	esi, DWORD PTR _data$[ebp]
	and	DWORD PTR tv292[ebp], 0
	mov	BYTE PTR _i$[ebp], 0
$LL16@threefish_@2:
; Line 201
	test	BYTE PTR _i$[ebp], 3
	jne	SHORT $LN3@threefish_@2
; Line 202
	push	0
	push	ebx
	push	DWORD PTR _s$[ebp]
	push	DWORD PTR _c$[ebp]
	push	esi
	call	_addkey
; Line 203
	mov	al, BYTE PTR _ofs$[ebp]
	add	esp, 20					; 00000014H
	add	BYTE PTR _s$[ebp], al
$LN3@threefish_@2:
; Line 205
	cmp	ebx, 1
	jne	SHORT $LN10@threefish_@2
; Line 206
	mov	edx, DWORD PTR [esi+24]
	mov	eax, DWORD PTR [esi+8]
	mov	ecx, DWORD PTR [esi+12]
	mov	DWORD PTR [esi+8], edx
	mov	edx, DWORD PTR [esi+28]
	mov	DWORD PTR [esi+12], edx
	mov	DWORD PTR [esi+24], eax
	mov	DWORD PTR [esi+28], ecx
$LN10@threefish_@2:
; Line 209
	mov	edi, DWORD PTR tv292[ebp]
	and	edi, 7
	movzx	eax, BYTE PTR _r0$[ebp+edi]
	push	ebx
	push	eax
	push	esi
	call	_mix
; Line 210
	movzx	eax, BYTE PTR _r1$[ebp+edi]
	push	ebx
	push	eax
	lea	eax, DWORD PTR [esi+16]
	push	eax
	call	_mix
	add	esp, 24					; 00000018H
; Line 212
	test	ebx, ebx
	jne	SHORT $LN5@threefish_@2
; Line 213
	mov	edx, DWORD PTR [esi+24]
	mov	eax, DWORD PTR [esi+8]
	mov	ecx, DWORD PTR [esi+12]
	mov	DWORD PTR [esi+8], edx
	mov	edx, DWORD PTR [esi+28]
	mov	DWORD PTR [esi+12], edx
	mov	DWORD PTR [esi+24], eax
	mov	DWORD PTR [esi+28], ecx
$LN5@threefish_@2:
; Line 199
	inc	BYTE PTR _i$[ebp]
	inc	DWORD PTR tv292[ebp]
	cmp	BYTE PTR _i$[ebp], 72			; 00000048H
	jb	$LL16@threefish_@2
; Line 216
	push	0
	push	ebx
	push	DWORD PTR _s$[ebp]
	push	DWORD PTR _c$[ebp]
	push	esi
	call	_addkey
	add	esp, 20					; 00000014H
	pop	edi
	pop	esi
	pop	ebx
; Line 217
	leave
	ret	0
_threefish_encrypt ENDP
_TEXT	ENDS
END
