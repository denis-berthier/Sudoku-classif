
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;             MITH 158,276 T&E(3)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; All the puzzles are min-expands,
;;; so that nb-clues = nb-clues-after-BRT and nb-cands = nb-cands-after-BRT


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; nb-clues, n-cands and density
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; nb-clues = nb-clues after-BRT
(file-min-value (str-cat ?*TE3-Mi* "nb-clues.txt"))
24
(file-max-value (str-cat ?*TE3-Mi* "nb-clues.txt"))
40
(file-mean-and-sd (str-cat ?*TE3-Mi* "nb-clues.txt"))
(30.6345687280447 1.69259764392895)


;;; nb-cands = nb-cands-after-BRT
(file-min-value (str-cat ?*TE3-Mi* "nb-cands.txt"))
min = 141
(file-max-value (str-cat ?*TE3-Mi* "nb-cands.txt"))
max = 242
(file-mean-and-sd (str-cat ?*TE3-Mi* "nb-cands.txt"))
(188.778317622381 10.7625795956769)


;;; nb-cands-after-W1
(file-mean-and-sd (str-cat ?*TE3-Mi* "nb-cands-after-W1.txt"))
(184.963596956829 10.9729769592129)

(file-max-value (str-cat ?*TE3-Mi* "nb-cands-after-W1.txt"))
234

(file-min-value (str-cat ?*TE3-Mi* "nb-cands-after-W1.txt"))
136


;;; remember that all these puzzles are min-expands, i.e. after BRT
;;; HIGH CORRELATION between nb-clues-after-BRT and nb-cands-after-BRT
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE3-Mi* "nb-clues.txt")
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    158276
)
E(nb-clues-after-BRT) = 30.6345687280451
E(nb-cands-after-BRT) = 188.778317622384
Sigma(nb-clues-after-BRT) = 1.69259764392125
Sigma(nb-cands-after-BRT) = 10.7625795956445
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.892706097416928  <=====
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.67637587318644
b = 362.671644435731


;;; density (after BRT)
(file-mean-and-sd (str-cat ?*TE3-Mi* "density.txt"))
(6.89698469761687 0.250843322849861)

(file-max-value (str-cat ?*TE3-Mi* "density.txt"))
8.05

(file-min-value (str-cat ?*TE3-Mi* "density.txt"))
min = 6.03


(correlation-coefficient
    nb-clues-after-BRT
    density
    (str-cat ?*TE3-Mi* "nb-clues.txt")
    (str-cat ?*TE3-Mi* "density.txt")
    158276
)
E(nb-clues-after-BRT) = 30.6345687280451
E(density) = 6.89698469761677
Sigma(nb-clues-after-BRT) = 1.69259764392125
Sigma(density) = 0.250843322830925
correlation-coefficient(nb-clues-after-BRT, density) = 0.72891628626524  <=====
regression density = a * nb-clues-after-BRT + b
a = 0.108025545213897
b = 3.5876687083771

(correlation-coefficient
    nb-cands-after-BRT
    density
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    (str-cat ?*TE3-Mi* "density.txt")
    158276
)
E(nb-cands-after-BRT) = 188.778317622384
E(density) = 6.89698469761677
Sigma(nb-cands-after-BRT) = 10.7625795956445
Sigma(density) = 0.250843322830925
correlation-coefficient(nb-cands-after-BRT, density) = -0.448970709892367
regression density = a * nb-cands-after-BRT + b
a = -0.0104641553376978
b = 8.87239033760665

(sqr-correlation-coefficient
    density
    nb-cands-after-BRT
    (str-cat ?*TE3-Mi* "density.txt")
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    158276
)
E(density) = 6.89698469761677
E(sqr(nb-cands-after-BRT)) = 13.7340835393132
Sigma(density) = 0.250843322830925
Sigma(sqr(nb-cands-after-BRT)) = 0.391493240745725
correlation-coefficient(density, sqr(nb-cands-after-BRT)) = -0.449567277261806
regression sqr(nb-cands-after-BRT) = a * density + b
a = -0.701643353796133
b = 18.5733070136297



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; nb-clues, n-cands or density versus difficulty
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No significant correlation between Sudoku-specific W+OR5W and any generic nb-clues, nb-cands or density
(correlation-coefficient
    nb-clues
    W+OR5W
    (str-cat ?*TE3-Mi* "nb-clues.txt")
    (str-cat ?*TE3-Mi* "Trid-OR5W-levels.txt")
    158276
)
E(nb-clues) = 30.6345687280451
E(W+OR5W) = 26.3776567514973
Sigma(nb-clues) = 1.69259764392125
Sigma(W+OR5W) = 39.9955582986959
correlation-coefficient(nb-clues, W+OR5W) = 0.00468517324378692
regression W+OR5W = a * nb-clues + b
a = 0.110709193224003
b = 22.9861283628502

(correlation-coefficient
    nb-cands
    W+OR5W
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    (str-cat ?*TE3-Mi* "Trid-OR5W-levels.txt")
    158256
)
E(nb-cands) = 188.778656101509
E(W+OR5W) = 26.3793726620159
Sigma(nb-cands) = 10.7624848866396
Sigma(W+OR5W) = 39.9964896492072
correlation-coefficient(nb-cands, W+OR5W) = 0.0204245456059213
regression W+OR5W = a * nb-cands + b
a = 0.075903486557374
b = 12.0504144762959


(correlation-coefficient
    density
    W+OR5W
    (str-cat ?*TE3-Mi* "density.txt")
    (str-cat ?*TE3-Mi* "Trid-OR5W-levels.txt")
    158276
)
E(density) = 6.89698469761677
E(W+OR5W) = 26.3776567514973
Sigma(density) = 0.250843322830925
Sigma(W+OR5W) = 39.9955582986959
correlation-coefficient(density, W+OR5W) = -0.0940449225226211
regression W+OR5W = a * density + b
a = -14.9949344435415
b = 129.797490150369


(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    (str-cat ?*TE3-Mi* "SER.txt")
    158276
)
needs to extract the SER info



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Mean number of candidates deleted by a clue
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE3-Mi* "nb-clues.txt")
    (str-cat ?*TE3-Mi* "nb-cands.txt")
    0
    158276
    (str-cat ?*TE3-Mi* "mdel.txt")
)

(file-mean-and-sd
    (str-cat ?*TE3-Mi* "mdel.txt")
)
(17.670672827943 0.679738002024756)



;;; The question of non-confluence of ORk-whips has been considered in section 15.15 of [UMNR].
;;; The rarity of non-confluence is illustrated by the follwing computation:
;;; there are only 20 cases in 158276 (1.26%).
;;; (Note that function "compare-level-files" is now called "compare-ratings-in-files".)

(compare-ratings-in-files
    Trid
    Imp630
    (str-cat ?*TE3-Mi* "Trid-OR5W-levels.txt")
    (str-cat ?*TE3-Mi* "Imp630-OR5W-levels.txt")
    158276
)
#47: Trid = 5; Imp630 = 4; diff = 1
#49: Trid = 5; Imp630 = 4; diff = 1
#53: Trid = 5; Imp630 = 4; diff = 1
#56: Trid = 5; Imp630 = 4; diff = 1
#57: Trid = 5; Imp630 = 4; diff = 1
#62: Trid = 5; Imp630 = 4; diff = 1
#65: Trid = 5; Imp630 = 4; diff = 1
#68: Trid = 5; Imp630 = 4; diff = 1
#70: Trid = 99; Imp630 = 3; diff = 96
#71: Trid = 99; Imp630 = 4; diff = 95
...
#14958: Trid = 8; Imp630 = 99; diff = -91
...

39829 differences
39809 positive differences
20 negative differences

;;; You can run similar comparisons with the various Select1...Select4 selections.


;;; Usingthe following additional function, you can alsocompare the results for 4 files


;;; 2) Compare Trid, Imp630-Select1, Imp630-Select2, Imp630-all
;;; Here again, any < sign is a non-confluence anomaly

(compare-levels-in-4-files
    (str-cat ?*TE3-Mi* "Trid-OR5W-levels.txt")
    (str-cat ?*TE3-Mi* "Select1-OR5W-levels.txt") ; Select1
    (str-cat ?*TE3-Mi* "Select2-OR5W-levels.txt") ; Select2
    (str-cat ?*TE3-Mi* "Imp630-OR5W-levels.txt") ; Imp630
    158276
)
47   5 = 5 > 4 = 4
49   5 = 5 > 4 = 4
53   5 = 5 > 4 = 4
56   5 = 5 > 4 = 4
57   5 = 5 > 4 = 4
62   5 = 5 > 4 = 4
65   5 = 5 > 4 = 4
68   5 = 5 > 4 = 4
70   99 > 3 = 3 = 3
71   99 > 4 = 4 = 4
...
1942   99 > 7 < 8 = 8
...
Different lines: (47 49 53 56 ...)
39832

