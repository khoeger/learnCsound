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
        instr   101             ; simple oscil
a1      oscil   10000, 440, 1   ; Oscillator
        out     a1
        endin

        instr   102             ; simple FM
a1      foscil  10000, 440, 1, 2, 3, 1
        out     a1
        endin

      instr   103             ; simple Buzz
a1    buzz  10000, 440, 10, 1
      out     a1
      endin

      instr   104             ; simple Waveguide
a1    pluck  10000, 440, 440, 2, 1
      out     a1
      endin

      instr   105             ; simple granular
a1    grain  10000, 440, 55, 10000, 10, .05, 1, 3, 1
      out     a1
      endin

      instr   106             ; simple wavetable
a1    loscil  10000, 440, 4
      out     a1
      endin
</CsInstruments>
<CsScore>
; f number load-time table-size GEN Routine parameter1 parameter2...
;f 111 0 16 10 1 ; A sinewave with 16 pts
f 1 0 4096 10 1
f 2 0 4096 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062
f 3 0 4097 20 2  1
f 4 0 0    1  "sing.aif" 0 4 0
</CsScore>
</CsoundSynthesizer>
