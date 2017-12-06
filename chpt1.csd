<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; source: http://www.csounds.com/chapter1/
;--- default orchestral header
sr        =     44100 ; audio sample rate, 44.1 kHz
kr        =     4410  ; control rate, 4410 Hz
ksmps     =     10    ; sr/kr, # of samples in each control period
nchnls    =     1     ; number of channels

; orchestra syntax
;output  oscil amplitude,  frequency,  function #  ; COMMENT
        instr   101                                ; simple oscil
a1      oscil   10000,      440,        1           ; Oscillator
        out     a1
        endin

</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>
