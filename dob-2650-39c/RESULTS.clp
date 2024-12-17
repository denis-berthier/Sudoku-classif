

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;      2,650 39-clue minimal puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(record-nb-cands-at-start
    (str-cat ?*39c* "puzzles.txt")
    (str-cat ?*39c* "nb-cands.txt")
    2650
)

(record-nb-clues
    (str-cat ?*39c* "puzzles-expands.txt")
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
    2650
)

(record-nb-cands-at-start
    (str-cat ?*39c* "puzzles-expands.txt")
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    2650
)


;;; before BRT
(file-min-value
    (str-cat ?*39c* "nb-cands.txt")
)
min = 125
(file-max-value
    (str-cat ?*39c* "nb-cands.txt")
)
max = 146
(file-mean-and-sd
    (str-cat ?*39c* "nb-cands.txt")
)
(134.463975858167 4.15864706542107)


;;; after BRT
(file-min-value
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
)
(file-max-value
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
)
max = 45
(file-mean-and-sd
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
)
(39.8359109769898 1.23044818836225)

(file-min-value
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
)
min = 103
(file-max-value
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
)
max = 146
(file-mean-and-sd
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
)
(130.757072802716 6.07887161217517)




(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    (str-cat ?*39c* "nb-cands.txt")
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    2650
)
E(nb-cands) = 134.514716981132
E(nb-cands-after-BRT) = 130.80641509434
Sigma(nb-cands) = 3.23657902541838
Sigma(nb-cands-after-BRT) = 5.52379726320251
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.587477146839635
regression nb-cands-after-BRT = a * nb-cands + b
a = 1.00263414871735
b = -4.0626336559933

(nonZ0-correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    B
    (str-cat ?*39c* "nb-cands.txt")
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    (str-cat ?*39c* "B-ratings.txt")
    2650
)
# of B≠0 cases = 2650
E(nb-cands) = 134.514716981132
E(nb-cands-after-BRT) = 130.80641509434
Sigma(nb-cands) = 3.23657902541838
Sigma(nb-cands-after-BRT) = 5.52379726320251
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.587477146839635
regression nb-cands-after-BRT = a * nb-cands + b
a = 1.00263414871735
b = -4.0626336559933



(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    2650
)
E(nb-clues-after-BRT) = 39.8509433962264
E(nb-cands-after-BRT) = 130.80641509434
Sigma(nb-clues-after-BRT) = 0.956827036580111
Sigma(nb-cands-after-BRT) = 5.52379726320251
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.832242441848401
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -4.8045658691191
b = 322.272897588046



(mean-cands-deleted-n-grids-after-first-p
   (str-cat ?*39c* "nb-clues.txt")
   (str-cat ?*39c* "nb-cands-after-BRT.txt")
   0
   2650
   (str-cat ?*39c* "mdel.txt")
)
(file-mean-and-sd
   (str-cat ?*39c* "mdel.txt")
)
(15.3325111955819 0.329795088729747)

(file-nonZ0-mean-and-sd
   (str-cat ?*39c* "mdel.txt")
   (str-cat ?*39c* "B-ratings.txt")
)
(15.3382970488633 0.141635827249484)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; W and B
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(file-mean-and-sd
    (str-cat ?*39c* "B-ratings.txt")
)
(4.40852508487363 1.06069437216555)



(correlation-coefficient
    nb-clues-after-BRT
    B
    (str-cat ?*39c* "nb-clues-after-BRT.txt")
    (str-cat ?*39c* "B-ratings.txt")
    2650
)
correlation-coefficient(nb-clues-after-BRT, B) = -0.223024212846179

(correlation-coefficient
    nb-cands-after-BRT
    B
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    (str-cat ?*39c* "B-ratings.txt")
    2650
)
correlation-coefficient(nb-cands-after-BRT, B) = 0.143966923611039

(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    B
    B
    (str-cat ?*39c* "nb-cands-after-BRT.txt")
    (str-cat ?*39c* "B-ratings.txt")
    (str-cat ?*39c* "B-ratings.txt")
    2650
)
correlation-coefficient(nb-cands-after-BRT, B) = 0.143966923611039


