

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  Monhard-until-2023-08-15-TE2+3,
;;;  55,088 minimal puzzles in  T&E(2) or T&E(3)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; http://forum.enjoysudoku.com/the-hardest-sudokus-new-thread-t6539-1628.html
;;; https://drive.google.com/file/d/1LxrL5R5vmYqj6f7FBEmPL5ot7OZY1pXH/view?usp=drive_link



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; before BRT



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) TE-depth computations with SHC:
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar TE-depth -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/TE-depth.txt




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) T&E(3) puzzles:
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*TE3-puzzles* =
    (extract-lines-with-X-value
        (str-cat ?*TE23-Mon* "puzzles.txt")
        (str-cat ?*TE23-Mon* "TE-depth.txt")
        55088
        3
        (str-cat ?*TE23-Mon* "TE3-puzzles.txt")
    )
)

;;; before BRT
(record-nb-clues
    (str-cat ?*TE23-Mon* "TE3/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
    9009
)

(file-min-value
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
)
24
(file-max-value
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
)
31
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
)
(27.430410654828 0.970306511327294)


(record-nb-cands-at-start
    (str-cat ?*TE23-Mon* "TE3/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-cands.txt")
    9009
)
(file-min-value
    (str-cat ?*TE23-Mon* "TE3/nb-cands.txt")
)
180
(file-max-value
    (str-cat ?*TE23-Mon* "TE3/nb-cands.txt")
)
233
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE3/nb-cands.txt")
)
(204.300110987791 7.75629421029708)

(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-cands.txt")
    9009
)
E(nb-clues) = 27.4334554334554
E(nb-cands) = 204.322788322788
Sigma(nb-clues) = 0.926320912622418
Sigma(nb-cands) = 7.45206557514701
correlation-coefficient(nb-clues, nb-cands) = -0.819507524307359
regression nb-cands = a * nb-clues + b
a = -6.59277333292175
b = 385.185341734371



;;; after BRT
;;; expand the puzzles:
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar Expand.jar -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/puzzles-expands.txt

(record-nb-clues
    (str-cat ?*TE23-Mon* "TE3/puzzles-expands.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-clues-after-BRT.txt")
    9009
)
(record-nb-cands-at-start
    (str-cat ?*TE23-Mon* "TE3/puzzles-expands.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
    9009
)

(file-min-value
    (str-cat ?*TE23-Mon* "TE3/nb-clues-after-BRT.txt")
)
27
(file-max-value
    (str-cat ?*TE23-Mon* "TE3/nb-clues-after-BRT.txt")
)
38
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE3/nb-clues-after-BRT.txt")
)
(32.2098779134295 2.37336592224106)

(file-min-value
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
)
145
(file-max-value
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
)
212
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
)
(176.79589345172 13.1268871506583)


(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE23-Mon* "TE3/nb-clues-after-BRT.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
    9009
)
E(nb-clues-after-BRT) = 32.2134532134535
E(nb-cands-after-BRT) = 176.815517815518
Sigma(nb-clues-after-BRT) = 2.34911010587734
Sigma(nb-cands-after-BRT) = 12.994783615824
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.956710381247615
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.29232084789062
b = 347.299447839626



;;; compute mdel
(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE23-Mon* "TE3/nb-clues.txt")
    (str-cat ?*TE23-Mon* "TE3/nb-cands-after-BRT.txt")
    0
    9009
    (str-cat ?*TE23-Mon* "TE3/mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE3/mdel.txt")
)
(20.1475725940997 0.825236983568504)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; All the 9009 T&E(3) puzzles have a tridagon
;;; and are in T&E(W2, 2)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; All the 9009 T&E(3) puzzles have a tridagon:
(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE3/puzzles.txt")
    0
    9009
)
(length$ ?*tridagon-list*)
9009


cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar BxBB -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE3/BxBB.txt

;;; all in B2BB




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) T&E(2) puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*TE2-puzzles* =
    (extract-lines-with-X-value
        (str-cat ?*TE23-Mon* "puzzles.txt")
        (str-cat ?*TE23-Mon* "TE-depth.txt")
        55088
        2
        (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    )
)
(length$ ?*TE2-puzzles*)
46079

;;; before BRT
(record-nb-clues
    (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
    46079
)

(record-nb-cands-at-start
    (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-cands2.txt")
    46079
)

(file-min-value
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
)
22
(file-max-value
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
)
32
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
)
(27.6073133680556 1.14096822647004)

(file-min-value
    (str-cat ?*TE23-Mon* "TE2/nb-cands.txt")
)
167
(file-max-value
    (str-cat ?*TE23-Mon* "TE2/nb-cands.txt")
)
261
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE2/nb-cands.txt")
)
(202.566644965278 12.2800168426974)

(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-cands.txt")
    46079
)
E(nb-clues) = 27.6079124981012
E(nb-cands) = 202.571041038217
Sigma(nb-clues) = 1.13370896424514
Sigma(nb-cands) = 12.2438380093792
correlation-coefficient(nb-clues, nb-cands) = -0.826768705210898
regression nb-cands = a * nb-clues + b
a = -8.92894245091066
b = 449.08050292354


;;; after BRT
;;; expand the puzzles:
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar Expand.jar -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE2/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE2/puzzles-expands.txt

(record-nb-clues
    (str-cat ?*TE23-Mon* "TE2/puzzles-expands.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-clues-after-BRT.txt")
    46079
)

(record-nb-cands-at-start
    (str-cat ?*TE23-Mon* "TE2/puzzles-expands.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
    46079
)

(file-min-value
    (str-cat ?*TE23-Mon* "TE2/nb-clues-after-BRT.txt")
)
22
(file-max-value
    (str-cat ?*TE23-Mon* "TE2/nb-clues-after-BRT.txt")
)
39
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE2/nb-clues-after-BRT.txt")
)
(32.9188368055556 1.88262598288212)

(file-min-value
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
)
147
(file-max-value
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
)
245
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
)
(171.847743055556 11.7941580897109)



(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE23-Mon* "TE2/nb-clues-after-BRT.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
    46079
)
E(nb-clues-after-BRT) = 32.9195512055383
E(nb-cands-after-BRT) = 171.851472471192
Sigma(nb-clues-after-BRT) = 1.87639009326413
Sigma(nb-cands-after-BRT) = 11.767084526428
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.697594035106169
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -4.37470225711257
b = 315.864707433193

;;; compute mdel:

(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE23-Mon* "TE2/nb-clues.txt")
    (str-cat ?*TE23-Mon* "TE2/nb-cands-after-BRT.txt")
    0
    46079
    (str-cat ?*TE23-Mon* "TE2/mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*TE23-Mon* "TE2/mdel.txt")
)
(20.2099494645431 0.839514719814001)


;;; compute BxB for the T&E(2) puzzles (with SHC5):
2023/11/24: redo the BxB calculations with SHC5 (buffer-size = 500000, max-length = 13)

cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar BxB -max-length 13 -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE2/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Monhard-until-2023-08-15/TE2/BxB.txt



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; All the T&E(2) puzzles in B7B and above have a non-degen trid
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract the B7B puzzles from the T&E(2) list (numbers are from the T&E(2) list):

(extract-lines-with-X-value
    (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2/BxB.txt")
    46079
    7
    (str-cat ?*TE23-Mon* "TE2/B7B-puzzles.txt")
)
77

Until now, we knew only 10 puzzles in B7B (including 7 from previous smaller monh collections):

.2...67..4...8......9.......3.....7.5.8....4..1.3....2....9..5....6.1..3...2..6.7  11.8 01.2 01.2  #22;elevT11.2#22;BxB=7
5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5;11.80;11.80;3.40;tax;m_b_metcalf;22;20;Met#1;Bpb=7
........1.....2.3...4.5.6...3.....72.4....8..6..8..9...7...1...4.56.....8..59....;11.80;1.20;1.20;dob;12_12_03;247964;22;Dob#1;Bpb=7
98.76.5..7.5..9....645.8...8...75.9.5.649...7...8.....6.....4.3...6.4...........2;11.8/1.2/1.2;monh#1;Bpb=7
98.76.5..7.58.49...46.5.....78.46.9...958.......9.7....6.........4....32.....8.5.;11.8/1.2/1.2;monh#2;Bpb=7
98.76.5..7.5.496...4.......67.89....5..4.6.7..94.5........8..........8.3......4.2;11.8/1.2/1.2;monh#3;Bpb=7
98.76.5..7.4..98...56......8..5.6.9..67.8......9.74.......4..........6.3......4.2;11.8/1.2/1.2;monh#4;Bpb=7
98.76.5..7.4..98...56..8...8..5.6.9.5.9.74....679.........4..........6.3......4.2;11.8/1.2/1.2;monh#5;Bpb=7
98.76.5..7.5.496...4.5.....67.89....5..4.6.7..94..7.......8..........8.3......4.2;11.8/1.2/1.2;monh#6;Bpb=7
98.76.5..7.5..89...645.9...59...4....486.5.7...7.8......6....9....4............32;11.8/1.2/1.2;monh#6;Bpb=7


After these calculations, we know 77 more:
98.76.54.7.5.4.8....6....9.67...5...4.8...75..59....68...3....9...2..........4...    11.7/1.2/1.2    220515  #3079
98.76.5..7.4.8.....56...8..8.5..7.4.6..59.....79.48.6....9....3......4..........2    11.7/1.2/1.2    220515  #3080
98.76.54.7.5..4....6...8.9.85.9.6...4.6.87......45...8..7...3........2..........9    11.7/1.2/1.2    220515  #3081
98.76.54.7.5.9.....64..8.9.85.9.6...4.6.87......45...8..7...3........2..........9    11.7/1.2/1.2    220515  #3233
98.76.54.7.5.498...6.8.....49..87....579.6......45...9..6....3........2.........8    11.7/1.2/1.2    220515  #3234
98.76.54.7.5..4....6...8.9.8..9.6...4.6.87..5...45...8..7...3........2..........9    11.7/1.2/1.2    220515  #3235
98.76.54.7.5.9.....64..8.9.8..9.6...4.6.87..5...45...8..7...3........2..........9    11.7/1.2/1.2    220515  #3236
98.76.5..7.5.498...648......9..87....579.6.4....45..9...6.....3.......8.........2    11.7/1.2/1.2    220515  #3237
98.76.5..7.5..9....645.8...8...75.9.5.649...7...8.....6.....4.3...6.4...........2    11.8/1.2/1.2    220928  #5743
98.76.5..7.58.49...46.5.....78.46.9...958.......9.7....6.........4....32.....8.5.    11.8/1.2/1.2    220928  #5744
98.76.5..7.5.496...4.......67.89....5..4.6.7..94.5........8..........8.3......4.2    11.8/1.2/1.2    230514  #15340
98.76.5..7.4..98...56......8..5.6.9..67.8......9.74.......4..........6.3......4.2    11.8/1.2/1.2    230514  #15344
98.76.5..7.4..98...56..8...8..5.6.9.5.9.74....679.........4..........6.3......4.2    11.8/1.2/1.2    230514  #15345
98.76.5..7.5.496...4.5.....67.89....5..4.6.7..94..7.......8..........8.3......4.2    11.8/1.2/1.2    230514  #15346
98.76.5..7.5..89...645.9...59...4....486.5.7...7.8......6....9....4............32    11.8/1.2/1.2    230514  #15382
98.76.5..7.6.4......58.....6.859..4.45..7.....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #34412
98.76.5..7.5.496...4.5.....67.89....5..4.6.7..94.7........8..........8.3......4.2    11.6/1.2/1.2    230514  #37154
98.76....7.6..5....458.....6...98.....7..48.....57.9..5.4....98.....6..........32    11.6/1.2/1.2    230514  #37188
98.76.5..7.5.496...4.......67.89....5....6.7..94.5........84.........8.3......4.2    11.6/1.2/1.2    230514  #37325
98.76.5..7.5..96...4.......67.89....5..4.6.7..94.5........84.........8.3......4.2    11.6/1.2/1.2    230514  #37396
98.76.5..7.6.4......58.....6.859..4.4...7.....9.6...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #37433
98.76.5..7.4..98...5.......8..5.6.9..67.8......9.74...6.....4.3....4..........6.2    11.6/1.2/1.2    230514  #37439
98.76....7.6..58...458.....6...98.....7..4......57..9.5.4...9.8.....6.........3.2    11.6/1.2/1.2    230514  #37475
98.76.5..7.4..98...56......8..5...9..67.8......9.74......64..........6.3......4.2    11.6/1.2/1.2    230514  #37485
98.76.5..7.6.45.....58.....6.8.9..4.45..7.....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #37517
98.76.5..7.6.4......58.....6.759..4.45..78....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #38028
98.76.5..7.4..98...56..8...8..5.6.9.5.7.94....6..7........4..........6.3......4.2    11.6/1.2/1.2    230514  #38836
98.76.5..7.4..98...56..8...8..5.6.9.5.9.74....67.9........4..........6.3......4.2    11.6/1.2/1.2    230514  #38844
98.76.5..7.4..98...5.......8..5...9..67.8......9.74...6.....4.3...64..........6.2    11.6/1.2/1.2    230514  #38891
98.76.5..7.6.4......58.9...6..5...4.45..78....976......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #38922
98.76.5..7.6.45.....58.9...6......4.45..78....976......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #38927
98.76.5..7.5.496...4.5.....67.89....5..4.6.7..94..5.......8..........8.3......4.2    11.6/1.2/1.2    230514  #38939
98.76.5..7.5.496...4.5.....69.87....5..4.6.7...4.9........8..........8.3......4.2    11.6/1.2/1.2    230514  #38944
98.76.5..7.6.45.....58.....6...9..4.45..78....976......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #38967
98.76.5..7.4..98...56..8...8..5...9.5.9.74....679........64..........6.3......4.2    11.6/1.2/1.2    230514  #39001
98.76.5..7.6.4......58.9...6.75...4.4...78....9.6...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39044
98.76.5..7.6.4......58.....6.759..4.4...78....9.6...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39045
98.76.5..7.6.4......58.....6..59..4.4...78....986...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39049
98.76.5..7.6.4......58.....6..59..4.45..78....976......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39052
98.76....7.6.54....548.....64..98.....76.58......7.9..4.5....98.....6..........32    11.6/1.2/1.2    230514  #39058
98.76.5..7.4..98...56..8...8..5.6.9..678.......9.74.......4..........6.3......4.2    11.6/1.2/1.2    230514  #39059
98.76.5..7.5..96...4.5.....67.89....5..4.6.7..94..7.......84.........8.3......4.2    11.6/1.2/1.2    230514  #39081
98.76.5..7.5.496...4.5.....67.89....5....6.7..94..7.......84.........8.3......4.2    11.6/1.2/1.2    230514  #39140
98.76.5..7.5.496.....5.....69.87....5..4.6.7...4.9....4.....8.3....8..........4.2    11.6/1.2/1.2    230514  #39162
98.76.5..7.6.45.....58.....6...9..4.45..78....986......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39167
98.76.5..7.5..96...4.5.....69.87....5..4.6.7...4.9....4.....8.3....8..........4.2    11.6/1.2/1.2    230514  #39170
98.76....7.6.54....548.....64..98.....7..58.....67.9..4.5....98.....6..........32    11.6/1.2/1.2    230514  #39193
98.76.5..7.5.496...4.5.....67.89....5....6.7..94.7........84.........8.3......4.2    11.6/1.2/1.2    230514  #39197
98.76.5..7.6.4......58.9...6.75...4.45..78....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39200
98.76.5..7.4..98...5...8...8..5...9..678.......9.74...6.....4.3...64..........6.2    11.6/1.2/1.2    230514  #39211
98.76.5..7.5.496...4.5.....69.87....5....6.7...4.9........84.........8.3......4.2    11.6/1.2/1.2    230514  #39224
98.76.5..7.6.45.....58.....6.7.9..4.45..78....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39261
98.76.5..7.5..96...4.5.....69.87....5..4.6.7...4.9........84.........8.3......4.2    11.6/1.2/1.2    230514  #39265
98.76.5..7.5.496...4.5.....67.89....5....6.7..94..5.......84.........8.3......4.2    11.6/1.2/1.2    230514  #39318
98.76.5..7.5..96...4.5.....67.89....5..4.6.7..94.7........84.........8.3......4.2    11.6/1.2/1.2    230514  #39336
98.76.5..7.4..98...56..8...8..5...9..678.......9.74......64..........6.3......4.2    11.6/1.2/1.2    230514  #39422
98.76.5..7.6.4......58.....6..59..4.45..78....986......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39431
98.76.5..7.6.45.....58.9...6.7....4.45..78....9.6......7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39443
98.76.5..7.4..98...5...8...8..5.6.9..678.......9.74...6.....4.3....4..........6.2    11.6/1.2/1.2    230514  #39447
98.76....7.6..58...458.....65..98.....75.4.......7..9.5.4...9.8.....6.........3.2    11.6/1.2/1.2    230514  #39455
98.76....7.6..5....458.....65..98.....75.48......7.9..5.4....98.....6..........32    11.6/1.2/1.2    230514  #39458
98.76.5..7.5..96...4.5.....67.89....5..4.6.7..94..5.......84.........8.3......4.2    11.6/1.2/1.2    230514  #39464
98.76.5..7.4..98...56..8...8..5.6.9..6.87......7.94.......4..........6.3......4.2    11.6/1.2/1.2    230514  #39681
98.76.5..7.6.4......58.....6..59..4.4...78....976...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #39797
98.76.5..7.4..98...5...8...8..5...9..6.87......7.94...6.....4.3...64..........6.2    11.6/1.2/1.2    230514  #39950
98.76....7.5...9...46..5...5..98.....6.5.7.8...8.46....7..........6.4.98.......32    11.6/1.2/1.2    230514  #39952
98.76.5..7.4..98...56..8...8..5...9.5.7.94....6..7.......64..........6.3......4.2    11.6/1.2/1.2    230514  #39953
98.76.5..7.4..98...5...8...8..5.6.9..6.87......7.94...6.....4.3....4..........6.2    11.6/1.2/1.2    230514  #39955
98.76....7.5...9...46..58..5..98.....6.5.7.....8.46....7..........6.4.98.......32    11.6/1.2/1.2    230514  #39957
98.76.5..7.4..98...56..8...8..5...9..6.87......7.94......64..........6.3......4.2    11.6/1.2/1.2    230514  #39959
98.76.5..7.6..5....4..8....8..6...5.5...98.4..97.4....67....4.5...9...........3.2    11.6/1.2/1.2    230514  #39960
98.76.5..7.6..5....45.8....8..6......9754........98.4.67....4.5...9...........3.2    11.6/1.2/1.2    230514  #39961
98.76.5..7.6..5....4..8....8..6.....5...98.4..9754....67....4.5...9...........3.2    11.6/1.2/1.2    230514  #39962
98.76.5..7.5.496.....5.....69.87....5....6.7...4.9....4.....8.3....84.........4.2    11.6/1.2/1.2    230514  #39965
98.76....7.6..5....45.8....8..6..5...9754........984..67.....54...9............32    11.6/1.2/1.2    230514  #39966
98.76.5..7.6.4......58.9...6..5...4.4...78....976...5..7..........98.4.5......3.2    11.6/1.2/1.2    230514  #40118
98.76.5..7.4..98...56..8...8..5...9.5.9.74....67.9.......64..........6.3......4.2    11.6/1.2/1.2    230514  #40187


;;; These 77 puzzles ALL have a non-degenerate tridagon:
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE2/B7B-puzzles.txt")
    0
    77
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 27.7s
;;; TOTAL RESOLUTION TIME = 25.99s
;;; MAX TIME = 0.63s
(length$ ?*tridagon-list*)
77


;;; extract and check the sub-collections with BxB > 7
----------------------------------------------------------------------------

(extract-lines-with-X-value
    (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2/BxB.txt")
    46079
    8
    (str-cat ?*TE23-Mon* "TE2/B8B-puzzles.txt")
)
(3852 3853 3854 3855 4075 4105 4106 4110 4111 4199 4402 4403 6412 6414 6424 6426 6669 6670 8140 9449 9599 9968 9969 10166 10167 10215 33890 44653)
28 puzzles


(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE2/B8B-puzzles.txt")
    0
    28
)
(length$ ?*tridagon-list*)
28

----------------------------------------------------------------------------

(extract-lines-with-X-value
    (str-cat ?*TE23-Mon* "TE2-puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2/BxB.txt")
    46079
    9
    (str-cat ?*TE23-Mon* "TE2/B9B-puzzles.txt")
)
160 puzzles

(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE2/B9B-puzzles.txt")
    0
    160
)
(length$ ?*tridagon-list*)
160


----------------------------------------------------------------------------

(extract-lines-with-X-value
    (str-cat ?*TE23-Mon* "TE2-puzzles.txt")
    (str-cat ?*TE23-Mon* "TE2-BxB.txt")
    46079
    10
    (str-cat ?*TE23-Mon* "B10B-puzzles.txt")
)
6 puzzles

in SFin + W8 + Trid-OR5W8:
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE2/B10B-puzzles.txt")
    0
    6
)
(length$ ?*tridagon-list*)
6




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) check tridagon + degen-cycl-trid on the file of 46079 T&E(2) puzzles:
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE23-Mon* "TE2/puzzles.txt")
    0
    46079
)

;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.4
;;; TOTAL OUTER TIME = 2h 30m 22.91s
;;; TOTAL RESOLUTION TIME = 2h 20m 48.27s
;;; MAX TIME = 0.46s

(length$ ?*tridagon-list*)
46042

;;; Only 37 puzzles have no tridagon
(length$ (not-in-list$ ?*tridagon-list* 46079))
37
(not-in-list$ ?*tridagon-list* 46079)
(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 44 45 46 47 48 49 50 338 411 412 418 428 436 486 1371)

;;; Only 10 puzzles have no trid and no degen trid:
(length$ ?*degenerate-cyclic-tridagon-list*)
46069
(not-in-list$  ?*degenerate-cyclic-tridagon-list* 46079)
(1 2 7 12 14 15 18 22 44 338)
