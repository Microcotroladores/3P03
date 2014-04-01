#INCLUDE<P16F84A.INC>
	__CONFIG _XT_OSC & _CP_OFF & _PWRTE_ON & _WDT_OFF
CONT 	  EQU 	  0CH
		    ORG	    000H
CONF: 	BSF	    STATUS,RP0
	    	MOVLW	  01H
	    	MOVWF	  TRISA
	     	CLRF	  TRISB
	     	BCF	    STATUS,RP0
	    	CLRF  	PORTB
FUEGO:	MOVLW	  D'25'
AIRE: 	MOVWF	  0CH
    		MOVF	  0CH,W
	    	CALL	  LETRAS
	    	MOVWF	  PORTB
AGUA: 	BTFSC	  PORTA,0
	    	GOTO	  AGUA
TIERRA:	BTFSS	  PORTA,0
	    	GOTO	  TIERRA
		    DECFSZ	0CH,0
	    	GOTO	  AIRE
	    	GOTO	  FUEGO
LETRAS:	ADDWF	  PCL,1
  	  	RETLW 	00H
    		RETLW 	0FH		;)
    		RETLW 	048H	;=
	    	RETLW 	000H	;
	    	RETLW 	03FH	;O
	    	RETLW 	030H	;I
	     	RETLW 	050H	;R
    		RETLW 	077H	;A
    		RETLW 	054H	;N
    		RETLW 	030H	;I
    		RETLW 	07FH	;B
    		RETLW 	06H		;1
    		RETLW 	054H	;N
    		RETLW 	077H	;A
    		RETLW 	050H	;R
    		RETLW 	03DH	;G
    		RETLW 	054H	;N
    		RETLW 	01CH	;U
    		RETLW 	06DH	;S
    		RETLW 	079H	;E
    		RETLW 	077H	;A
    		RETLW 	05EH	;D
    		RETLW 	030H	;I
    		RETLW 	03EH	;V
    		RETLW  	077H	;A
    		RETLW	  038H	;L
	    	END
