

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2,014,078 38-clue minimal puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is a collection of 2,014,078 38-clue minimal puzzles



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; before BRT
(file-min-value
    (str-cat ?*38c* "nb-cands.txt")
)
min = 123
(file-max-value
    (str-cat ?*38c* "nb-cands.txt")
)
max = 161
(file-mean-and-sd
    (str-cat ?*38c* "nb-cands.txt")
)
(140.276595406635 3.59869230025167)



;;; after BRT
(file-min-value
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
)
min = 38
(file-max-value
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
)
max = 81
(file-mean-and-sd
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
)
(39.2140348020112 1.1969754684961)


(file-min-value
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
)
min = 0
(file-max-value
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
)
max = 156
(file-mean-and-sd
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
)
(134.95447447692 6.477452645173)


(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    (str-cat ?*38c* "nb-cands.txt")
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    2014078
)
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.512391506316648
slowly increasing

(nonZ0-correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    W
    (str-cat ?*38c* "nb-cands.txt")
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    (str-cat ?*38c* "TE-depth.txt")
    2014078
)
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.522407800175068



(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    2014078
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.846696879341387
slowly decreasing when we increase the size of the sub-collection


(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    W
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    (str-cat ?*38c* "TE-depth.txt")
    2014078
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.845046608971998
# of W≠0 cases = 2013941
E(nb-clues-after-BRT) = 39.2112117485085
E(nb-cands-after-BRT) = 134.963721876652
Sigma(nb-clues-after-BRT) = 1.14599270839577
Sigma(nb-cands-after-BRT) = 6.38061159350001
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.845046608971998
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -4.70501614081167
b = 319.453106054169



(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*38c* "nb-clues.txt")
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    0
    2014078
    (str-cat ?*38c* "mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*38c* "mdel.txt")
)
(15.6327674624797 0.170796483920247)

(file-nonZ0-mean-and-sd
    (str-cat ?*38c* "mdel.txt")
    (str-cat ?*38c* "B-ratings.txt")
)
(15.6325336349087 0.16791082360561)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; B and SER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(file-mean-and-sd
    (str-cat ?*38c* "B-ratings.txt")
)
(4.42301419159824 1.15263949913416)



There are 35 puzzles in T&E(2); all these B ratings have been set to 99. This cannot change the results below.
(correlation-coefficient
    nb-clues-after-BRT
    B
    (str-cat ?*38c* "nb-clues-after-BRT.txt")
    (str-cat ?*38c* "B-ratings.txt")
    2014078
)
E(nb-clues-after-BRT) = 39.2140542719803
E(B) = 4.42301638764754
Sigma(nb-clues-after-BRT) = 1.19665679586174
Sigma(B) = 1.15263557182942
correlation-coefficient(nb-clues-after-BRT, B) = -0.224329204110563
regression B = a * nb-clues-after-BRT + b
a = -0.216076841206434
b = 12.8962653656347

(correlation-coefficient
    nb-cands-after-BRT
    B
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    (str-cat ?*38c* "B-ratings.txt")
    2014078
)
E(nb-cands-after-BRT) = 134.954541482508
E(B) = 4.42301638764754
Sigma(nb-cands-after-BRT) = 6.47675620146285
Sigma(B) = 1.15263557182942
correlation-coefficient(nb-cands-after-BRT, B) = 0.144325978156573
regression B = a * nb-cands-after-BRT + b
a = 0.0256849650021981
b = 0.956713712781637

(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    B
    B
    (str-cat ?*38c* "nb-cands-after-BRT.txt")
    (str-cat ?*38c* "B-ratings.txt")
    (str-cat ?*38c* "B-ratings.txt")
    2014078
)
# of B≠0 cases = 2013941
E(nb-cands-after-BRT) = 134.963721876652
E(B) = 4.42331726699056
Sigma(nb-cands-after-BRT) = 6.38061159350001
Sigma(B) = 1.15209732819887
correlation-coefficient(nb-cands-after-BRT, B) = 0.14105507636735
regression B = a * nb-cands-after-BRT + b
a = 0.0254692162703118
b = 0.98589704586789



(defglobal ?*TE2-puzzles* =
    (extract-lines-with-X-value
        (str-cat ?*38c* "puzzles.txt")
        (str-cat ?*38c* "TE-depth.txt")
        2014078
        2
        (str-cat ?*38c* "TE2.txt")
    )
)




