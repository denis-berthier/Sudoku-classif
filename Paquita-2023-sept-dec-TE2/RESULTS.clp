

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  Paquita 2023-sept-dec, 81,139 minimal puzzles in  T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statitics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; before BRT
(record-nb-clues
    (str-cat ?*TE2-Paq* "puzzles.txt")
    (str-cat ?*TE2-Paq* "nb-clues.txt")
    81139
)
(record-nb-cands-at-start
    (str-cat ?*TE2-Paq* "puzzles.txt")
    (str-cat ?*TE2-Paq* "nb-cands.txt")
    81139
)

(file-min-value
    (str-cat ?*TE2-Paq* "nb-clues.txt")
)
21
(file-max-value
    (str-cat ?*TE2-Paq* "nb-clues.txt")
)
32
(file-mean-and-sd
    (str-cat ?*TE2-Paq* "nb-clues.txt")
)
(27.2039684495933 1.12247482962899)

(file-min-value
    (str-cat ?*TE2-Paq* "nb-cands.txt")
)
167
(file-max-value
    (str-cat ?*TE2-Paq* "nb-cands.txt")
)
248
(file-mean-and-sd
    (str-cat ?*TE2-Paq* "nb-cands.txt")
)
(210.322578259798 11.7007227111141)

(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*TE2-Paq* "nb-clues.txt")
    (str-cat ?*TE2-Paq* "nb-cands.txt")
    81139
)
E(nb-clues) = 27.2043037257054
E(nb-cands) = 210.325170386622
Sigma(nb-clues) = 1.11841151561218
Sigma(nb-cands) = 11.6774744598006
correlation-coefficient(nb-clues, nb-cands) = -0.843986001533019
regression nb-cands = a * nb-clues + b
a = -8.81216335825761
b = 450.053938865194



;;; after BRT
(record-nb-clues
    (str-cat ?*TE2-Paq* "puzzles-expands.txt")
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
    81139
)

(record-nb-cands-at-start
    (str-cat ?*TE2-Paq* "puzzles-expands.txt")
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
    81139
)

(file-min-value
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
)
22
(file-max-value
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
)
40
(file-mean-and-sd
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
)
(35.3786788267193 2.55351091117805)

(file-min-value
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
)
147
(file-max-value
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
)
247
(file-mean-and-sd
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
)
(166.30983485334 11.3742011568704)


(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
    81139
)
E(nb-clues-after-BRT) = 35.3791148522903
E(nb-cands-after-BRT) = 166.311884543807
Sigma(nb-clues-after-BRT) = 2.55050429049893
Sigma(nb-cands-after-BRT) = 11.3592763205943
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.777256696949849
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -3.46169721242015
b = 288.783667805872



(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE2-Paq* "nb-clues.txt")
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
    0
    81139
    (str-cat ?*TE2-Paq* "mdel.txt")
)
(file-mean-and-sd
    (str-cat ?*TE2-Paq* "mdel.txt")
)
(20.7183461684539 0.950567572514183)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; BxB and SER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; compute BxB for the T&E(2) puzzles (with SHC):
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar BxB -max-length 13 -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Paquita-TE2-2023-sept-dec/puzzles.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-post-trid/Paquita-TE2-2023-sept-dec/BxB.txt

;;; get the SER:
(deffunction extract-SER (?puzzles-file ?SER-file ?len)
    (open ?puzzles-file "puzzles-file-symb" "r")
    (open ?SER-file "SER-file-symb" "w")
    (bind ?i 0)
    (while (< ?i ?len)
        (bind ?i (+ ?i 1))
        (bind ?SER (sub-string 86 89 (readline "puzzles-file-symb")))
        (printout "SER-file-symb" ?SER crlf)
    )
    (close "SER-file-symb")
    (close "puzzles-file-symb")
)
(extract-SER
    (str-cat ?*TE2-Paq* "puzzles.txt")
    (str-cat ?*TE2-Paq* "SER.txt")
    81139
)


(correlation-coefficient
    SER
    BxB
    (str-cat ?*TE2-Paq* "SER.txt")
    (str-cat ?*TE2-Paq* "BxB.txt")
    81139
)
E(SER) = 11.6635009058529
E(BxB) = 5.94164335276499
Sigma(SER) = 0.0525279943540386
Sigma(BxB) = 0.243190232108366
correlation-coefficient(SER, BxB) = 0.343829245290822
regression BxB = a * SER + b
a = 1.59183526795918
b = -12.6247287370455

(correlation-coefficient
    nb-clues-after-BRT
    BxB
    (str-cat ?*TE2-Paq* "nb-clues-after-BRT.txt")
    (str-cat ?*TE2-Paq* "BxB.txt")
    81139
)
E(nb-clues-after-BRT) = 35.3791148522903
E(BxB) = 5.94164335276499
Sigma(nb-clues-after-BRT) = 2.55050429049893
Sigma(BxB) = 0.243190232108366
correlation-coefficient(nb-clues-after-BRT, BxB) = 0.230335359508098
regression BxB = a * nb-clues-after-BRT + b
a = 0.0219624447409108
b = 5.16463149783923

(correlation-coefficient
    nb-cands-after-BRT
    BxB
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
    (str-cat ?*TE2-Paq* "BxB.txt")
    81139
)
E(nb-cands-after-BRT) = 166.311884543807
E(BxB) = 5.94164335276499
Sigma(nb-cands-after-BRT) = 11.3592763205943
Sigma(BxB) = 0.243190232108366
correlation-coefficient(nb-cands-after-BRT, BxB) = -0.12292218194378
regression BxB = a * nb-cands-after-BRT + b
a = -0.00263163542416677
b = 6.3793155995904

(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-Paq* "nb-cands-after-BRT.txt")
    (str-cat ?*TE2-Paq* "SER.txt")
    81139
)
E(nb-cands-after-BRT) = 166.311884543807
E(SER) = 11.6635009058529
Sigma(nb-cands-after-BRT) = 11.3592763205943
Sigma(SER) = 0.0525279943540386
correlation-coefficient(nb-cands-after-BRT, SER) = -0.115628780056393
regression SER = a * nb-cands-after-BRT + b
a = -0.000534694969516226
b = 11.7524270338892





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; tridagons
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; check trid and degen-cycl-trid on the whole file of 81,139 TE2 puzzles:
;;; computations done in several stages:

(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE2-Paq* "puzzles.txt")
    0
    20000
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 1h 9m 49.1s
;;; TOTAL RESOLUTION TIME = 1h 6m 20.26s
;;; MAX TIME = 0.52s
(length$ ?*tridagon-list*)
19999
(not-in-list$ ?*tridagon-list* 20000)
(2071)
(member$ 2071 ?*degenerate-cyclic-tridagon-list*)
FALSE


(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE2-Paq* "puzzles.txt")
    20000
    20000
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 1h 8m 18.61s
;;; TOTAL RESOLUTION TIME = 1h 5m 16.55s
;;; MAX TIME = 0.5s
(length$ ?*tridagon-list*)
20000

(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE2-Paq* "puzzles.txt")
    40000
    20000
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 1h 9m 43.94s
;;; TOTAL RESOLUTION TIME = 1h 6m 14.5s
;;; MAX TIME = 0.64s
(length$ ?*tridagon-list*)
19997
(not-in-list$ ?*tridagon-list* 60000)
(53403 56526 56527)

(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*TE2-Paq* "puzzles.txt")
    60000
    21139
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 1h 10m 10.82s
;;; TOTAL RESOLUTION TIME = 1h 6m 57.95s
;;; MAX TIME = 0.54s
(length$ ?*tridagon-list*)
21116



;;; The lists are available in files "tridagon-list.clp" and "degen-cycl-trid-list.clp"
;;; You can get them by loading thses files:
(load (str-cat ?*TE2-Paq* "tridagon-list.clp"))
(load (str-cat ?*TE2-Paq* "degen-cycl-trid-list.clp"))

;;; 27 puzzles have no trid:
(length$ (not-in-list$ ?*tridagon-list* 81139))
27
(not-in-list$ ?*tridagon-list* 81139)
(2071 53403 56526 56527 69817 79403 79404 79599 79600 79625 79626 80030 80031 80129 80130 80160 80161 80270 80271 80272 80273 80406 80407 80479 80480 80709 80710)

;;; 4 puzzles have no trid and no degen-cycl-trid
(length$ ?*degenerate-cyclic-tridagon-list* 81139)
81135

;;; these 4 puzzles are:
(not-in-list$ ?*degenerate-cyclic-tridagon-list* 81139)
(2071 53403 69817 79404)
their BxB:
(6 5 5 5)
98.76....7.....9...54......6...3.8....5....2......4.1..7.38.......9..3.......1..2 ED=11.7/11.7/2.6
98.7.....7..86......5..4...3..6..9....2.............51.7..8.3.......67.......1.42 ED=11.6/1.2/1.2
98.7.....7..86......5..4...3..6..9....2.............51.7..8.3.......67.......1.24 ED=11.6/1.2/1.2
98765.......4..........3...8.62..7..2......9..95...8.276..2.9.85......6..2.....75 ED=11.5/1.2/1.2


