.export Main

.segment "CODE"

.proc Main
    ; Loading player's items
    ; Order: sword, shield, armor, helmet, boots, ring, amulet, mushroom
    lda #%11011011
    sta $00

    ; checking if player has a sword
    lda #%10000000 ; Sword Bitmask
    and $00 ; if the accumulator is 0, then the zero flag is set
    beq has_no_sword ; branch if zero flag is set

has_sword:
    ; yey, player has a sword
    lda #$0A
    jmp finish 

has_no_sword:
    ; the player has no sword
    lda #$00

finish:
    rts

.endproc