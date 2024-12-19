
;;; results with only whips[2], S3 and degenerate-cyclic-tridagon rule loaded


(mute-print-options)
(solve-n-grids-after-first-p-from-text-file "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/puzzles.txt" 0 26370)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 2h 8m 58.39s
;;; TOTAL RESOLUTION TIME = 1h 40m 14.86s
;;; MAX TIME = 0.7s
(length$ ?*degenerate-cyclic-tridagon-list*)
10885 (instead of 11156 before)
?*degenerate-cyclic-tridagon-list*




;;; Check if the frequency depends on the BxB  classif

(load
    "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/degen-cycl-trid-list.txt")

(deffunction nb-degen-cycl-trid-in-BxB (?BxB-file ?p-value)
    (bind ?nb 0)
    (open ?BxB-file "BxB-file" "r")
    (loop-for-count (?i 1 26370)
        (bind ?p (eval (readline "BxB-file")))
        (if (and (eq ?p ?p-value)
                (member$ ?i ?*degenerate-cyclic-tridagon-list*)
            )
            then (bind ?nb (+ ?nb 1))
        )
    )
    (close)
    ?nb
)


(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
7)
0
0%

(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
    6
)
10 i.e. (/ 10 40) = 25.0 %

(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
    5
)
151 (/ 151 630) = 23.97 %

(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
    4
)
1387 (/ 1387 5890) = 23.55 %

(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
    3
)
5261 (/ 5261 12174) = 43.21 %

(nb-degen-cycl-trid-in-BxB      "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
    2
)
4076 (/ 4076 7635) = 53.39 %

;;; nb puzzles in BxB
1
40
630
5890
12174
7635
;;; nb pattern in BxB
0
10
151
1387
5261
4076
;;; % pattern in BxB
0
25.00
23.97
23.55
43.22
53.39




;;; Check if the frequency depends on the SER classif.
(defglobal ?*SER-boundaries* = (create$
    4 ; 11.9
    24 ; 11.8
    58 ; 11.7
    106 ; 11.6
    215 ; 11.5
    477 ; 11.4
    1685 ; 11.3
    3374 ; 11.2
    6030 ; 11.1
    7848 ; 11.0
    10275 ; 10.9
    13206 ; 10.8
    17812 ; 10.7
    26370 ; 10.6
))


(deffunction count-SERs (?SER-boundaries)
    (bind ?count1 (nth$ 1 ?SER-boundaries))
    (bind ?res (create$ ?count1))
    (bind ?count2 0)
    (loop-for-count (?i 2 14)
        (bind ?count2 (nth$ ?i ?SER-boundaries))
        (bind ?res (create$ ?res (- ?count2 ?count1)))
        (bind ?count1 ?count2)
    )
    ?res
)
(count-SERs ?*SER-boundaries*)
(4 20 34 48 109 262 1208 1689 2656 1818 2427 2931 4606 8558)


(deffunction count-elements-per-SER-in-list (?elements-list ?SER-length ?SER-boundaries)
    ;;; the original list of puzzles is supposed to be ordered by decreasing SER values
    (bind ?j119 0)
    (bind ?j118 0)
    (bind ?j117 0)
    (bind ?j116 0)
    (bind ?j115 0)
    (bind ?j114 0)
    (bind ?j113 0)
    (bind ?j112 0)
    (bind ?j111 0)
    (bind ?j110 0)
    (bind ?j109 0)
    (bind ?j108 0)
    (bind ?j107 0)
    (bind ?j106 0)
    (bind ?n1 (nth$ 1 ?SER-boundaries))
    (bind ?n2 (nth$ 2 ?SER-boundaries))
    (bind ?n3 (nth$ 3 ?SER-boundaries))
    (bind ?n4 (nth$ 4 ?SER-boundaries))
    (bind ?n5 (nth$ 5 ?SER-boundaries))
    (bind ?n6 (nth$ 6 ?SER-boundaries))
    (bind ?n7 (nth$ 7 ?SER-boundaries))
    (bind ?n8 (nth$ 8 ?SER-boundaries))
    (bind ?n9 (nth$ 9 ?SER-boundaries))
    (bind ?n10 (nth$ 10 ?SER-boundaries))
    (bind ?n11 (nth$ 11 ?SER-boundaries))
    (bind ?n12 (nth$ 12 ?SER-boundaries))
    (bind ?n13 (nth$ 13 ?SER-boundaries))
    (bind ?n14 (nth$ 14 ?SER-boundaries))
    (foreach ?i ?elements-list
        (switch TRUE
            (case (<= ?i ?n1) then (bind ?j119 (+ ?j119 1)))
            (case (<= ?i ?n2) then (bind ?j118 (+ ?j118 1)))
            (case (<= ?i ?n3) then (bind ?j117 (+ ?j117 1)))
            (case (<= ?i ?n4) then (bind ?j116 (+ ?j116 1)))
            (case (<= ?i ?n5) then (bind ?j115 (+ ?j115 1)))
            (case (<= ?i ?n6) then (bind ?j114 (+ ?j114 1)))
            (case (<= ?i ?n7) then (bind ?j113 (+ ?j113 1)))
            (case (<= ?i ?n8) then (bind ?j112 (+ ?j112 1)))
            (case (<= ?i ?n9) then (bind ?j111 (+ ?j111 1)))
            (case (<= ?i ?n10) then (bind ?j110 (+ ?j110 1)))
            (case (<= ?i ?n11) then (bind ?j109 (+ ?j109 1)))
            (case (<= ?i ?n12) then (bind ?j108 (+ ?j108 1)))
            (case (<= ?i ?n13) then (bind ?j107 (+ ?j107 1)))
            (case (<= ?i ?n14) then (bind ?j106 (+ ?j106 1)))
            (default (printout t ?i crlf))
        )
    )
    (create$
        ?j119
        ?j118
        ?j117
        ?j116
        ?j115
        ?j114
        ?j113
        ?j112
        ?j111
        ?j110
        ?j109
        ?j108
        ?j107
        ?j106
    )
)

(count-elements-per-SER-in-list ?*degenerate-cyclic-tridagon-list* 26371 ?*SER-boundaries*)
(3 3 8 24 31 71 317 478 977 983 1300 1096 1757 3837)


(deffunction count-percent-per-SER-in-list (?elements-list ?SER-length ?SER-boundaries)
    (bind ?SER-counts (count-SERs ?SER-boundaries))
    (bind ?elements-counts (count-elements-per-SER-in-list ?elements-list ?SER-length ?SER-boundaries))
    (bind ?percents (create$))
    (loop-for-count (?i 1 14)
        (bind ?new-percent (/ (round (* 10000 (/ (nth$ ?i ?elements-counts) (nth$ ?i ?SER-counts)))) 100))
        (bind ?percents
            (create$ ?percents ?new-percent)
        )
    )
    ?percents
)

(count-percent-per-SER-in-list ?*degenerate-cyclic-tridagon-list* 26371 ?*SER-boundaries*)
(75.0 15.0 23.53 50.0 28.44 27.1 26.24 28.3 36.78 54.07 53.56 37.39 38.15 44.84)




;;; check if the frequency depends on BxB

(deffunction sublist-with-given-Z-value (?list ?Z-file ?Z-file-length ?z-value)
    (bind ?nb-puzzles 0) ; #puzzles with Z-value ?z-value
    (bind ?nb-puzzles-in-list 0) ; number of these pouzzles in ?list
    (bind ?sublist (create$))
    (open ?Z-file "Z-file" "r")
    (bind ?n 0)
    (while (< ?n ?Z-file-length)
        (bind ?n (+ ?n 1))
        (if (eq (read "Z-file") ?z-value)
            then (bind ?nb-puzzles (+ ?nb-puzzles 1))
                (if (member$ ?n ?list) then (bind ?nb-puzzles-in-list (+ ?nb-puzzles-in-list 1)) (bind ?sublist (create$ ?sublist ?n)))
        )
    )
    (close "Z-file")
    (printout t "p = " ?z-value ", nb-puzzles = " ?nb-puzzles ", nb-puzzles-in-list = " ?nb-puzzles-in-list ", %-puzzles-in-list = " (* 100 (/ ?nb-puzzles-in-list ?nb-puzzles)) crlf)
    ?sublist
)

(loop-for-count (?i 0 5)
    (bind ?p (- 7 ?i))
    (sublist-with-given-Z-value
        ?*degenerate-cyclic-tridagon-list*
        "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/BxB.txt"
        26370
        ?p
    )
)
