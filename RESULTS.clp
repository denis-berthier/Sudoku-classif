

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;             PH2010 3,103,972 in T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; All the puzzles are minimals


(deffunction extract-SER (?puzzles-file ?SER-file ?len)
    (open ?puzzles-file "puzzles-file-symb" "r")
    (open ?SER-file "SER-file-symb" "w")
    (bind ?i 0)
    (while (< ?i ?len)
        (bind ?i (+ ?i 1))
        (bind ?SER (sub-string 83 86 (readline "puzzles-file-symb")))
        (printout "SER-file-symb" ?SER crlf)
    )
    (close "SER-file-symb")
    (close "puzzles-file-symb")
)
(extract-SER
    (str-cat ?*TE2-PH* "puzzles.txt")
    (str-cat ?*TE2-PH* "SER.txt")
    3103972
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; elementary statistics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; density

 (file-mean-and-sd (str-cat ?*TE2-PH* "density-11.7+.txt"))
(5.72173076923077 0.232808696257834)

(max-value (str-cat ?*TE2-PH* "density-11.7+.txt" 208))
max = 6.61

 (min-value (str-cat ?*TE2-PH* "density-11.7+.txt" 208))
min = 5.37



;;; nb-clues & nb-cands

(file-mean-and-sd
  (str-cat ?*TE2-PH* "nb-clues.txt")
)
(24.9231690878655 1.41785564094999)

(file-mean-and-sd  (str-cat ?*TE2-PH* "nb-cands.txt")



;;; NEW

;;; before BRT
(file-min-value (str-cat ?*TE2-PH* "nb-clues.txt"))
min = 19
(file-max-value (str-cat ?*TE2-PH* "nb-clues.txt"))
max = 37
(file-mean-and-sd (str-cat ?*TE2-PH* "nb-clues.txt"))
(24.9231610584242 1.41792598183912)

(file-min-value (str-cat ?*TE2-PH* "nb-cands.txt"))
min = 148
(file-max-value (str-cat ?*TE2-PH* "nb-cands.txt"))
max = 277
(file-mean-and-sd (str-cat ?*TE2-PH* "nb-cands.txt"))
(223.968795475992 10.869317768795)


only 1 with cand max-value (277)): #1222750
...........1..2..3.4..5..6......5.7...6.7.4...7.8.......4...9...5..4..8..6..8...7;10.90;1.20;1.20;MITH;2020_10;3274483;21;



;;; after BRT
(file-min-value (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt"))
min = 19
(file-max-value (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt"))
max = 41
(file-mean-and-sd (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt"))
(28.1370408183319 5.00244706455524)

(file-min-value (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt"))
min = 138
(file-max-value (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt"))
max = 271
(file-mean-and-sd (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt"))
(206.701954881695 25.7931956540007)






(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*TE2-PH* "nb-clues.txt")
    (str-cat ?*TE2-PH* "nb-cands.txt")
    3103972
)
E(nb-clues) = 24.9231690878657
E(nb-cands) = 223.968867631534
Sigma(nb-clues) = 1.41785564094622
Sigma(nb-cands) = 10.8685760899412
correlation-coefficient(nb-clues, nb-cands) = -0.685272173651684
regression nb-cands = a * nb-clues + b
a = -5.25295562295907
b = 354.889168833598

;;; correl, -a and b first increasing as the list increases (i.e. as mean SER decreases), upto:
for 1,400,000:
E(nb-clues) = 25.5627785714287
E(nb-cands) = 223.744707857137
Sigma(nb-clues) = 1.43919927921145
Sigma(nb-cands) = 11.1585545432792
correlation-coefficient(nb-clues, nb-cands) = -0.883160600288541
regression nb-cands = a * nb-clues + b
a = -6.84741569228302
b = 398.783678985494

;;; then the 3 start decreasing after 1,400,000 (passage 10.9 / 10.8)
;;; for 2,800,000
E(nb-clues) = 24.9623303571441
E(nb-cands) = 224.548638214284
Sigma(nb-clues) = 1.44935697492898
Sigma(nb-cands) = 10.8276785221823
correlation-coefficient(nb-clues, nb-cands) = -0.718664088313863
regression nb-cands = a * nb-clues + b
a = -5.36890762476306
b = 358.569084000609
;;; for 3,000,000
E(nb-clues) = 24.9327710000008
E(nb-cands) = 224.173375333332
Sigma(nb-clues) = 1.43012700886961
Sigma(nb-cands) = 10.8593788492476
correlation-coefficient(nb-clues, nb-cands) = -0.694867951198673
regression nb-cands = a * nb-clues + b
a = -5.27633859473167
b = 355.727117234243




(correlation-coefficient
    nb-clues
    nb-clues-after-BRT
    (str-cat ?*TE2-PH* "nb-clues.txt")
    (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt")
    3103972
)
E(nb-clues) = 24.9231690878657
E(nb-clues-after-BRT) = 28.1370498831811
Sigma(nb-clues) = 1.41785564094622
Sigma(nb-clues-after-BRT) = 5.00242237697089
correlation-coefficient(nb-clues, nb-clues-after-BRT) = 0.729512891051619
regression nb-clues-after-BRT = a * nb-clues + b
a = 2.57383862298556
b = -36.0111653223674
Higher than in CBGC because many puzzles have no singles at the start


(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
	(str-cat ?*TE2-PH* "nb-cands.txt")
	(str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    3103972
)
E(nb-cands) = 223.968867631534
E(nb-cands-after-BRT) = 206.702021474418
Sigma(nb-cands) = 10.8685760899412
Sigma(nb-cands-after-BRT) = 25.7929329765032
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.53808318369221
regression nb-cands-after-BRT = a * nb-cands + b
a = 1.27696060439797
b = -79.2973991026753





;;; after BRT
(file-max-value (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt"))
max = 271
only 1: #2617041
19 clues at start and after BRT
SER = 10.5
...........1..2..3.4..5..6.........7..2..1....5..6.8.....8.......7..3..16...4.5..;10.50;10.50;3.40;MITH;2020_10;3261357;19;
+-------+-------+-------+
! . . . ! . . . ! . . . !
! . . 1 ! . . 2 ! . . 3 !
! . 4 . ! . 5 . ! . 6 . !
+-------+-------+-------+
! . . . ! . . . ! . . 7 !
! . . 2 ! . . 1 ! . . . !
! . 5 . ! . 6 . ! 8 . . !
+-------+-------+-------+
! . . . ! 8 . . ! . . . !
! . . 7 ! . . 3 ! . . 1 !
! 6 . . ! . 4 . ! 5 . . !
+-------+-------+-------+



;;; high correlation after BRT:
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    3103972
)
E(nb-clues-after-BRT) = 28.1370498831811
E(nb-cands-after-BRT) = 206.702021474418
Sigma(nb-clues-after-BRT) = 5.00242237697089
Sigma(nb-cands-after-BRT) = 25.7929329765032
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.957332882678766
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -4.93609316014773
b = 345.589120949524

;;; STILL HIGHER for the 1st 1.4 million:
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    1400000
)
E(nb-clues-after-BRT) = 32.1499178571428
E(nb-cands-after-BRT) = 188.370475714286
Sigma(nb-clues-after-BRT) = 4.73164947760118
Sigma(nb-cands-after-BRT) = 26.9270407217744
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.981691745368511
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.58664662902483
b = 367.980705934317




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; BxB vs SER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "SER.txt")
    3103972
)
E(nb-clues-after-BRT) = 28.1370498831811
E(SER) = 10.7622017853254
Sigma(nb-clues-after-BRT) = 5.00242237697089
Sigma(SER) = 0.250372271017301
correlation-coefficient(nb-clues-after-BRT, SER) = 0.691556470952888
regression SER = a * nb-clues-after-BRT + b
a = 0.0346125439079836
b = 9.78830691080266


(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "SER.txt")
    3103972
)
E(nb-cands-after-BRT) = 206.702021474418
E(SER) = 10.7622017853254
Sigma(nb-cands-after-BRT) = 25.7929329765032
Sigma(SER) = 0.250372271017301
correlation-coefficient(nb-cands-after-BRT, SER) = -0.570937189464558
regression SER = a * nb-cands-after-BRT + b
a = -0.00554209328829327
b = 11.9077636712154
;;; for the 1st 1,400,000:
correlation-coefficient(nb-cands-after-BRT, SER) = -0.0601571724656512


(correlation-coefficient
    nb-cands-after-BRT
    BxB
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "BxB.txt")
    3103972
)
correlation-coefficient(nb-cands-after-BRT, BxB) = -0.352577484265269
for 1000000:
correlation-coefficient(nb-cands-after-BRT, BxB) = 0.0353752995383355
for 1550000:
correlation-coefficient(nb-cands-after-BRT, BxB) = -0.185315904593401
for 1800000:
correlation-coefficient(nb-cands-after-BRT, BxB) = -0.232245261663322
for 2300000:
correlation-coefficient(nb-cands-after-BRT, BxB) = -0.290843525564344

(correlation-coefficient
    SER
    BxB
    (str-cat ?*TE2-PH* "SER.txt")
    (str-cat ?*TE2-PH* "BxB.txt")
    2300000
)
correlation-coefficient(SER, BxB) = 0.448281729444935

(log-correlation-coefficient
    SER
    BxB
    (str-cat ?*TE2-PH* "SER.txt")
    (str-cat ?*TE2-PH* "BxB-copy.txt")
    500000
)
correlation-coefficient(SER, log(BxB)) = 0.244526114593672

(log-correlation-coefficient
    BxB
    SER
    (str-cat ?*TE2-PH* "BxB.txt")
    (str-cat ?*TE2-PH* "SER.txt")
    2300000
)
correlation-coefficient(BxB, log(SER)) = 0.44773350805133


(sqr-correlation-coefficient
    BxB
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "BxB.txt")
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    2300000
)
correlation-coefficient(BxB, sqr(nb-cands-after-BRT)) = -0.292691338969483





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Mean number of candidates deleted by a clue
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE2-PH* "nb-clues.txt")
    (str-cat ?*TE2-PH* "nb-cands.txt")
    0
    3103972
    (str-cat ?*TE2-PH* "mdel0.txt")
)
(file-mean-and-sd
    (str-cat ?*TE2-PH* "mdel0.txt")
)
(20.3127025116429 0.925598576093134)


(mean-cands-deleted-n-grids-after-first-p
    (str-cat ?*TE2-PH* "nb-clues.txt")
    (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt")
    0
    3103972
    (str-cat ?*TE2-PH* "mdel.txt")
)

(file-mean-and-sd
    (str-cat ?*TE2-PH* "mdel.txt")
)
(20.9814500225781 0.822064498961104)

(file-mean-and-sd
    (str-cat ?*TE2-PH* "mdel-11.2+.txt")
)
(21.3193841643095 0.929854017419246)





(correlation-coefficient
    mdel-after-BRT
    BxB
    (str-cat ?*TE2-PH* "mdel.txt")
    (str-cat ?*TE2-PH* "BxB.txt")
    3103972
)
E(mdel) = 20.9814567821382
E(BxB) = 2.65048073887272
Sigma(mdel) = 0.821978365731449
Sigma(BxB) = 0.527988871238056
correlation-coefficient(mdel, BxB) = 0.219878716449773
regression BxB = a * mdel + b
a = 0.141236704209703
b = -0.31287106655481




(correlation-coefficient
    mdel-after-BRT
    SER
    (str-cat ?*TE2-PH* "mdel.txt")
    (str-cat ?*TE2-PH* "SER.txt")
    3103972
)
E(mdel) = 20.9814567821382
E(SER) = 10.7622017853254
Sigma(mdel) = 0.821978365731449
Sigma(SER) = 0.250372271017301
correlation-coefficient(mdel, SER) = 0.198671427218217
regression SER = a * mdel + b
a = 0.0605147513518923
b = 9.49251414515382








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Correlations within each BxB
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; compute the BxB
java -jar SHC.jar BxB -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-pre-trid/Champagne-hardest/champagne-2021-08-H/puzzles2.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-pre-trid/Champagne-hardest/champagne-2021-08-H/BxB2.txt -max-length 15 -buffer-size 1000000
java -jar SHC.jar BxB -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-pre-trid/Champagne-hardest/champagne-2021-08-H/puzzles3.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-pre-trid/Champagne-hardest/champagne-2021-08-H/BxB3.txt -max-length 15 -buffer-size 1000000


TODO after deleting first line in BxB2 and appending to BxB
;;; extract the relevant data, separately for each p
(bind ?len 3103972)
(bind ?imin 2)
(progn
(loop-for-count (?i ?imin 7) do
    (extract-lines-with-X-value
        (str-cat ?*TE2-PH* "nb-clues-after-BRT.txt"
        (str-cat ?*TE2-PH* "BxB.txt"
        ?len
        ?i
        (str-cat (str-cat ?*TE2-PH* "B" ?i "B/nb-clues-after-BRT.txt")
    )
)
(printout t "nb-clues-after-BRT done" crlf)
;;; find the lengths of files
(loop-for-count (?j 2 7)
    (bind ?i (- 9 ?j))
    (printout t
        (file-length
            (str-cat (str-cat ?*TE2-PH* "B" ?i "B/nb-clues-after-BRT.txt"))
        crlf
    )
)
(loop-for-count (?i ?imin 7) do
    (extract-lines-with-X-value
        (str-cat ?*TE2-PH* "nb-cands-after-BRT.txt"
        (str-cat ?*TE2-PH* "BxB.txt"
        ?len
        ?i
        (str-cat (str-cat ?*TE2-PH* "B" ?i "B/nb-cands-after-BRT.txt")
    )
)
(printout t "nb-cands-after-BRT done" crlf)
(loop-for-count (?i ?imin 7) do
    (extract-lines-with-X-value
        (str-cat ?*TE2-PH* "SER.txt"
        (str-cat ?*TE2-PH* "BxB.txt"
        ?len
        ?i
        (str-cat (str-cat ?*TE2-PH* "B" ?i "B/SER.txt")
    )
)
(printout t "SER done" crlf)
)
3
111
2404
71884
1867639
1161929


;;; nb-clues-after-BRT vs nb-cands-after-BRT
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B7B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B7B/nb-cands-after-BRT.txt")
    3
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.917662935482279

(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B6B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B6B/nb-cands-after-BRT.txt")
    111
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.783650175844157

(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B5B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B5B/nb-cands-after-BRT.txt")
    2404
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.937377327032886

(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B4B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B4B/nb-cands-after-BRT.txt")
    71884
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.963610164181063

(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B3B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B3B/nb-cands-after-BRT.txt")
    1867639
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.971651499770198

(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*TE2-PH* "B2B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B2B/nb-cands-after-BRT.txt")
    1161929
)
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.739110723487977




;;; nb-clues-after-BRT vs SER
(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "B6B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B6B/SER.txt")
    111
)
correlation-coefficient(nb-clues-after-BRT, SER) = -0.00897559612451666

(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "B5B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B5B/SER.txt")
    2404
)
correlation-coefficient(nb-clues-after-BRT, SER) = -0.239182767787334

(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "B4B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B4B/SER.txt")
    71884
)
correlation-coefficient(nb-clues-after-BRT, SER) = 0.295801770473337

(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "B3B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B3B/SER.txt")
    1867639
)
correlation-coefficient(nb-clues-after-BRT, SER) = 0.671384506812891

(correlation-coefficient
    nb-clues-after-BRT
    SER
    (str-cat ?*TE2-PH* "B2B/nb-clues-after-BRT.txt")
    (str-cat ?*TE2-PH* "B2B/SER.txt")
    1161929
)
correlation-coefficient(nb-clues-after-BRT, SER) = 0.519570621065872



;;; nb-cands-after-BRT vs SER
(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "B6B/nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "B6B/SER.txt")
    111
)
correlation-coefficient(nb-cands-after-BRT, SER) = -0.00730672202542408

(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "B5B/nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "B5B/SER.txt")
    2404
)
correlation-coefficient(nb-cands-after-BRT, SER) = 0.224804556533223

(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "B4B/nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "B4B/SER.txt")
    71884
)
correlation-coefficient(nb-cands-after-BRT, SER) = -0.203969260070692

(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "B3B/nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "B3B/SER.txt")
    1867639
)
correlation-coefficient(nb-cands-after-BRT, SER) = -0.579366606145598

(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*TE2-PH* "B2B/nb-cands-after-BRT.txt")
    (str-cat ?*TE2-PH* "B2B/SER.txt")
    1161929
)
correlation-coefficient(nb-cands-after-BRT, SER) = -0.122276566080791




