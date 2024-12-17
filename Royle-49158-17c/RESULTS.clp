

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;             ROYLE17 49158
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is the complete collection of minimal puzzles with 17 clues



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Before BRT
(file-min-value
    (str-cat ?*17c* "nb-cands.txt")
)
min = 291
(file-max-value
    (str-cat ?*17c* "nb-cands.txt")
)
max = 330
(file-mean-and-sd
    (str-cat ?*17c* "nb-cands.txt")
)
(307.99987794707 4.89912481326603)


;;; After BRT
(record-expansions-n-grids-after-first-p-from-text-file
    (str-cat ?*17c* "puzzles.txt")
    0
    49158
    (str-cat ?*17c* "puzzles-expands.txt")
)

(record-nb-clues 
    (str-cat ?*17c* "puzzles-expands.txt"
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
    49158
)
(record-nb-cands-at-start
    (str-cat ?*17c* "puzzles-expands.txt"
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    49158
)

(file-min-value
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
)
min = 17
(file-max-value
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
)
 max = 81
(file-mean-and-sd
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
)
(57.889603124555 22.315102250377)


(file-min-value
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
)
(file-max-value
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
)
318
(file-mean-and-sd
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
)



(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    (str-cat ?*17c* "nb-cands.txt")
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    49158
)
E(nb-cands) = 308.006143455794
E(nb-cands-after-BRT) = 85.0123479392979
Sigma(nb-cands) = 4.69809504039945
Sigma(nb-cands-after-BRT) = 89.9051778068235
correlation-coefficient(nb-cands, nb-cands-after-BRT) = -0.1123440146377
regression nb-cands-after-BRT = a * nb-cands + b
a = -2.14987319853709
b = 747.186500739679


(nonZ0-correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    W
    (str-cat ?*17c* "nb-cands.txt")
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
# of W≠0 cases = 27253
E(nb-cands) = 307.697574578949
E(nb-cands-after-BRT) = 153.342274245037
Sigma(nb-cands) = 4.68666472500423
Sigma(nb-cands-after-BRT) = 64.0457456044328
correlation-coefficient(nb-cands, nb-cands-after-BRT) = -0.127518154578758
regression nb-cands-after-BRT = a * nb-cands + b
a = -1.74260284601231
b = 689.536943417399



;;; VERY HIGH CORRELATION (-0.98) between the number of clues after BRT and the number of candidates after BRT:
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    49158
)
E(nb-clues-after-BRT) = 57.8907807477924
E(nb-cands-after-BRT) = 85.0123479392979
Sigma(nb-clues-after-BRT) = 22.3138016657589
Sigma(nb-cands-after-BRT) = 89.9051778068235
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.98173329756279  <=======
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -3.95552976576391
b = 314.001054350503

;;; EVEN HIGHER (-0.99) IF THE BRT CASES ARE DISCARDED:
(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    W
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt"
    49158
)
# of W≠0 cases = 27253
E(nb-clues-after-BRT) = 39.3164055333358
E(nb-cands-after-BRT) = 153.342274245037
Sigma(nb-clues-after-BRT) = 11.129155133004
Sigma(nb-cands-after-BRT) = 64.0457456044328
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.988030393710068  <=======
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.68588922418248
b = 376.89100080062




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; W and SER statistics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(correlation-coefficient
    nb-clues-after-BRT
    W
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
E(nb-clues-after-BRT) = 57.8907807477924
E(W) = 0.897188656983607
Sigma(nb-clues-after-BRT) = 22.3138016657589
Sigma(W) = 1.01584732940719
correlation-coefficient(nb-clues-after-BRT, W) = -0.717543642722644
regression W = a * nb-clues-after-BRT + b
a = -0.032666544415488
b = 2.78828041752864

;;; but only due to puzzles in BRT
(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    W
    W
    (str-cat ?*17c* "nb-clues-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
# of W≠0 cases = 27253
E(nb-clues-after-BRT) = 39.3164055333358
E(W) = 1.61831724947713
Sigma(nb-clues-after-BRT) = 11.129155133004
Sigma(W) = 0.833290215891933
correlation-coefficient(nb-clues-after-BRT, W) = 0.0777728259972934
regression W = a * nb-clues-after-BRT + b
a = 0.00582320348591613
b = 1.38936981972172


(correlation-coefficient
    nb-cands-after-BRT
    W
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
E(nb-cands-after-BRT) = 85.0123479392979
E(W) = 0.897188656983607
Sigma(nb-cands-after-BRT) = 89.9051778068235
Sigma(W) = 1.01584732940719
correlation-coefficient(nb-cands-after-BRT, W) = 0.654771118636824
regression W = a * nb-cands-after-BRT + b
a = 0.00739832241552712
b = 0.268239897627708

;;; but only due to puzzles in BRT
(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    W
    W
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "W-ratings.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
# of W≠0 cases = 27253
E(nb-cands-after-BRT) = 153.342274245037
E(W) = 1.61831724947713
Sigma(nb-cands-after-BRT) = 64.0457456044328
Sigma(W) = 0.833290215891933
correlation-coefficient(nb-cands-after-BRT, W) = -0.0508537987325805
regression W = a * nb-cands-after-BRT + b
a = -0.000661651644849677
b = 1.71977641745635



(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "SER.txt")
    49158
)
 E(nb-cands-after-BRT) = 85.0123479392979
 E(SER) = 2.60256519793318
 Sigma(nb-cands-after-BRT) = 89.9051778068235
 Sigma(SER) = 1.63725374689976
 correlation-coefficient(nb-cands-after-BRT, SER) = 0.395847892962974
 regression SER = a * nb-cands-after-BRT + b
 a = 0.00720874438787682
 b = 1.98973291182554

(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    SER
    W
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    (str-cat ?*17c* "SER.txt")
    (str-cat ?*17c* "W-ratings.txt")
    49158
)
 # of W≠0 cases = 27253
 E(nb-cands-after-BRT) = 153.342274245037
 E(SER) = 3.40507833999928
 Sigma(nb-cands-after-BRT) = 64.0457456044328
 Sigma(SER) = 1.83144816165533
 correlation-coefficient(nb-cands-after-BRT, SER) = -0.153096585539561
 regression SER = a * nb-cands-after-BRT + b
 a = -0.00437794044703464
 b = 4.07640168465691



(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*17c* "nb-clues.txt")
    (str-cat ?*17c* "nb-cands-after-BRT.txt")
    0
    49158
    (str-cat ?*17c* "mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*17c* "mdel.txt")
)

(file-nonZ0-mean-and-sd
    (str-cat ?*17c* "mdel.txt")
    (str-cat ?*17c* "W-ratings.txt")
)
(33.8622191620568 3.76739680025903)

