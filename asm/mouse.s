		ORG	$C700

CLAMP_X_LOW	EQU	$478
CLAMP_Y_LOW	EQU	$4F8
CLAMP_X_HIGH	EQU	$578
CLAMP_Y_HIGH	EQU	$5F8

X_LOW		EQU	$478
Y_LOW		EQU	$4F8
X_HIGH		EQU	$578
Y_HIGH		EQU	$5F8
RESERVED1	EQU	$678
RESERVED2	EQU	$67F
STATUS		EQU	$778
MODE		EQU	$7F8

STATUS_DOWN	EQU	$80
STATUS_LAST	EQU	$40
INT_SCREEN	EQU	$08
INT_BUTTON	EQU	$04
INT_MOUSE	EQU	$02

ROMRTS		EQU 	$FF58
BOOT		EQU	$0801

		DFB	$00		; $00
		DFB	$00		; $01
		DFB	$00		; $02
		DFB	$00		; $03
		DFB	$00		; $04
		DFB	$38		; $05 = $38
		DFB	$00		; $06
		DFB	$18		; $07 = $18
		DFB	$00		; $08
		DFB	$00		; $09
		DFB	$00		; $0A
		DFB	$01		; $0B = $01
ID1		DFB	$20		; $0C = $20
		DFB	$00		; $0D
		DFB	$00		; $0E
		DFB	$00		; $0F
		DFB	$00		; $10
		DFB	$00		; $11
		DFB	$20		; $12 SETMOUSE
		DFB	$21		; $13 SERVEMOUSE
		DFB	$22		; $14 READMOUSE
		DFB	$23		; $15 CLEARMOUSE
		DFB	$24		; $16 POSMOUSE
		DFB	$25		; $17 CLAMPMOUSE
		DFB	$26		; $18 HOMEMOUSE
		DFB	$27		; $19 INITMOUSE
		DFB	$00		; $1A
		DFB	$00		; $1B
		DFB	$00		; $1C
		DFB	$00		; $1D
		DFB	$00		; $1E
		DFB	$00		; $1F
		RTS			; $20 SETMOUSE
		RTS			; $21 SERVEMOUSE
		RTS			; $22 READMOUSE
		RTS			; $23 CLEARMOUSE
		RTS			; $24 POSMOUSE
		RTS			; $25 CLAMPMOUSE
		RTS			; $26 HOMEMOUSE
		RTS			; $27 INITMOUSE
PADDING		DS	$C7FB - PADDING
		ORG	$C7FB
ID2		DFB	$D6		; $FB = $D6
	        DFB     $00		; $FC
		DFB	$00		; $FD
		DFB	$00		; $FE
		DFB	$00		; $FF
		END