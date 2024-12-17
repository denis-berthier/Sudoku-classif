


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2,000,000 18-clues minimal puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is a collection of 2,000,000 18-clue minimal puzzles

;;; JPF, 06 Aug 2021, 10:58:
;;;    "Here is a link of 2,000,000 18-clues puzzles.
;;;    Thoses puzzles were sent to me by Mathimagics a while ago.
;;;    https://drive.google.com/file/d/1d8XKhud_8L59Uy3jOjeFQ361eZun7Fms/view"




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; before BRT
(record-nb-cands-at-start
    (str-cat ?*18c* "puzzles.txt")
    (str-cat ?*18c* "nb-cands.txt")
    2000000
)

(file-min-value
    (str-cat ?*18c* "nb-cands.txt")
)
min = 271
(file-max-value
    (str-cat ?*18c* "nb-cands.txt")
)
max = 317
(file-mean-and-sd
    (str-cat ?*18c* "nb-cands.txt")
)
(290.398991300504 5.18602399870138)



;;; after BRT
(record-expansions-n-grids-after-first-p-from-text-file
    (str-cat ?*18c* "puzzles.txt")
    0
    2000000
    (str-cat ?*18c* "puzzles-expands.txt")
)
(record-nb-clues
    (str-cat ?*18c* "puzzles-expands.txt")
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
    2000000
)
(record-nb-cands-at-start
    (str-cat ?*18c* "puzzles-expands.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    2000000
)

(file-min-value
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
)
min = 18
(file-max-value
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
)
max = 81
(file-mean-and-sd
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
)
(56.6824961587519 22.9073955282132)


(file-min-value
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
)
min = 0
(file-max-value
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
)
max = 303
(file-mean-and-sd
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
)
(88.2966943516528 89.5845259697457)



;;; correlation
(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    (str-cat ?*18c* "nb-cands.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    2000000
)
E(nb-cands) = 290.399136500005
E(nb-cands-after-BRT) = 88.2967385000027
Sigma(nb-cands) = 5.18195837033469
Sigma(nb-cands-after-BRT) = 89.5845266090208
correlation-coefficient(nb-cands, nb-cands-after-BRT) = -0.0833803090182698
regression nb-cands-after-BRT = a * nb-cands + b
a = -1.44145996129126
b = 506.895466558316

(nonZ0-correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    B
    (str-cat ?*18c* "nb-cands.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
# of B≠0 cases = 1122278
E(nb-cands) = 290.152467570409
E(nb-cands-after-BRT) = 157.352703162678
Sigma(nb-cands) = 5.22341986640411
Sigma(nb-cands-after-BRT) = 58.6158431538348
correlation-coefficient(nb-cands, nb-cands-after-BRT) = -0.0985235563431294
regression nb-cands-after-BRT = a * nb-cands + b
a = -1.10560542197855
b = 478.146844508978


(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    2000000
)
E(nb-clues-after-BRT) = 56.6825244999987
E(nb-cands-after-BRT) = 88.2967385000027
Sigma(nb-clues-after-BRT) = 22.9073661909621
Sigma(nb-cands-after-BRT) = 89.5845266090208
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.984841724950527
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -3.85145018327395
b = 306.606657873953

(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    B
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
# of B≠0 cases = 1122278
E(nb-clues-after-BRT) = 37.6640787754912
E(nb-cands-after-BRT) = 157.352703162678
Sigma(nb-clues-after-BRT) = 10.533996716343
Sigma(nb-cands-after-BRT) = 58.6158431538348
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.986410367528044  <=====
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.48882603111472
b = 364.084279183549




(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*18c* "nb-clues.txt")
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    0
    2000000
    (str-cat ?*18c* "mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*18c* "mdel.txt")
)
(35.5946078415826 4.97698054295682)

(file-nonZ0-mean-and-sd
    (str-cat ?*18c* "mdel.txt")
    (str-cat ?*18c* "B-ratings.txt")
)
(31.758183157629 3.25643573091587)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; B and SER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(file-mean-and-sd
    (str-cat ?*18c* "SER.txt")
)
(2.71803174098187 1.71225986207574)



877722 at depth 0
1122274 at depth 1
4 at depth 2

only 4 puzzles have TE-depth 2:
#848676
#1722759
#1946398
#1950851

..3....8..5.1....6.....2....6.7..9.......3.....4..8................34.2.91.6.....;B1B
..345............6..9.2.....7...13.8.6.............5..5......2......84...1...7...;B1B
1..........7..9..36.....45......8.........61..9...3....3....897.............6.1..;B1B
............1.92...6......4.7..4.............8.1..59...4..6...7..9........2..1..6; B2B


B-ratings > 10
#530454
#870528
#1362122
#1403193
#1471138
..3....8.45...9........7...2.....4.7...........86.......18......7...52.....3...1.
.2..5...9..71.............4...7.4...39.......5...........53....8...9..6.......17.
.2.4..........9.36..8............5..3....7......2..8.17......9...5.6......18.....
12...............3.....74.5..5..........1.92..8..6.....9....8.......3.....4..5..7
.2.4..........9.3..8.1......6....8.....2..4..9....3...3...75.............4....2.6

12
12
11
11
13




(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    B
    B
    (str-cat ?*18c* "nb-clues-after-BRT.txt")
    (str-cat ?*18c* "B-ratings.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
# of B≠0 cases = 1122278
E(nb-clues-after-BRT) = 37.6640787754912
E(B) = 1.77071189134953
Sigma(nb-clues-after-BRT) = 10.533996716343
Sigma(B) = 0.951475897478358
correlation-coefficient(nb-clues-after-BRT, B) = 0.0640297254235341
regression B = a * nb-clues-after-BRT + b
a = 0.00578344023670819
b = 1.55288394268081


(correlation-coefficient
    nb-cands-after-BRT
    B
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
E(nb-cands-after-BRT) = 88.2967385000027
E(B) = 0.993615499999977
Sigma(nb-cands-after-BRT) = 89.5845266090208
Sigma(B) = 1.13143172050275
correlation-coefficient(nb-cands-after-BRT, B) = 0.662738188967354
regression B = a * nb-cands-after-BRT + b
a = 0.00837022907604118
b = 0.254551572087649

(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    B
    B
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "B-ratings.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
# of B≠0 cases = 1122278
E(nb-cands-after-BRT) = 157.352703162678
E(B) = 1.77071189134953
Sigma(nb-cands-after-BRT) = 58.6158431538348
Sigma(B) = 0.951475897478358
correlation-coefficient(nb-cands-after-BRT, B) = -0.0460366919884561
regression B = a * nb-cands-after-BRT + b
a = -0.000747286065845585
b = 1.88829937384614



(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "SER.txt")
    2000000
)
E(nb-cands-after-BRT) = 88.2967385000027
E(SER) = 2.71803310000006
Sigma(nb-cands-after-BRT) = 89.5845266090208
Sigma(SER) = 1.71225921148151
correlation-coefficient(nb-cands-after-BRT, SER) = 0.42104653555882
regression SER = a * nb-cands-after-BRT + b
a = 0.00804760415958232
b = 2.00745589996989

(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    SER
    B
    (str-cat ?*18c* "nb-cands-after-BRT.txt")
    (str-cat ?*18c* "SER.txt")
    (str-cat ?*18c* "B-ratings.txt")
    2000000
)
# of B≠0 cases = 1122278
E(nb-cands-after-BRT) = 157.352703162678
E(SER) = 3.54985966044061
Sigma(nb-cands-after-BRT) = 58.6158431538348
Sigma(SER) = 1.89781400677813
correlation-coefficient(nb-cands-after-BRT, SER) = -0.141975615062167
regression SER = a * nb-cands-after-BRT + b
a = -0.00459676593201565
b = 4.27317320564938

