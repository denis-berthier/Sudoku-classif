

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   SMALL SAMPLE (40) FROM ELEVEN 26,370 T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; create the sample list
(p-different-ordered-numbers-out-of-n
    40
    26370
)
(defglobal ?*sample* = (create$
    334 460 518 2079 2516 2592 2959 3660 6266 7356 7539 8335 9987 10420 10555 10640 11345 13445 13842 14008 14114 17632 17741 18410 18488 18666 18745 20079 21068 21457 22455 22592 22597 22748 23545 23874 24731 24904 25371 25427
))


;;; extract the 40 puzzles making the sample

(extract-puzzles-in-list
    (str-cat ?*TE2-EL* "puzzles.txt")
    26370
    ?*sample*
    (str-cat ?*TE2-EL* "Sample40/puzzles.txt")
)


;;; extract their BRT-expands, their BxB and their solutions
(extract-lines-in-list
    (str-cat ?*TE2-EL* "puzzles-expands.txt")
    26370
    ?*sample*
    (str-cat ?*TE2-EL* "Sample40/BRT-expands.txt")
)
(extract-lines-in-list
    (str-cat ?*TE2-EL* "BxB.txt")
    26370
    ?*sample*
    (str-cat ?*TE2-EL* "Sample40/BxB.txt")
)
(extract-lines-in-list
    (str-cat ?*TE2-EL* "solutions.txt")
    26370
    ?*sample*
    (str-cat ?*TE2-EL* "Sample40/solutions.txt")
)
(extract-data-from-lines-in-list
    (str-cat ?*TE2-EL* "BxB.txt"
    26370
    ?*sample*
    (str-cat ?*TE2-EL* "Sample40/BxB.txt"
)

(X-distribution-p-to-q
    (str-cat ?*TE2-EL* "Sample40/BxB.txt")
    40
    0
    25
)
0: 0
1: 0
2: 13
3: 14
4: 11
5: 2
6: 0
7: 0
...

;;; compute the BRT+1 expands

(record-1-expand-puzzles-n-grids-after-first-p-from-text-file
    (str-cat ?*TE2-EL* "Sample40/BRT-expands.txt")
    (str-cat ?*TE2-EL* "Sample40/solutions.txt")
    0
    40
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands.txt")
)


;;; find all their non isomorphic non-BRT minimals
cd /Users/berthier/Projects/Sudoku_Software/Other-Solvers/gsf_solver/gsf
./sudoku-gsf.exe -f'%#.c' -m -qFN -e'M>0&&uniq()&&minimal==1' < /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands.txt | sed s/0/./g > /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals.txt
=====>  794 puzzles (ratio 1 to 19.85)


check T&E-depth
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar TE-depth -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals-TE-depth.txt




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; T&E(1) sub-collection of the BRT+1-expands-minimals
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract the TE1 puzzles
(extract-lines-with-X-value
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals.txt")
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE-depth.txt")
    794
    1
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE1.txt"
)
=====> 397 puzzles


;;; check their B ratings
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar B -max-length 25 -max-time 180 -buffer-size 2000000 -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals-TE1.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals-TE1-B.txt

Puzzle 120  n = 25  Time = 2m8s  Cumulated time = 29m8s  Chains buffer: 73828/2000000
Puzzle 123  n = 8  Time = 2s  Cumulated time = 29m14s  Chains buffer: 5861/2000000
Puzzle 124  n = -2  Time = 4h33m27s  Cumulated time = 5h2m42s  Chains buffer: 1613508/2000000

#124
java -jar SHC.jar B -max-length 30 -max-time 1800 -buffer-size 5000000 -puzzle ..34..........9..2.8..1.4..2...6...7.....5.9..1.8..6...61......5..3.7.....4...3..  #246
Run time = 4h45m9s
B = 16


;;; Compute their B distribution:

(file-max-value
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE1-B.txt")
)
25

(X-distribution-p-to-q
    (str-cat ?*TE2-EL* "/Sample40/BRT+1-expands-minimals-TE1-B.txt")
    397
    0
    25
)
0: 0
1: 0
2: 1
3: 4
4: 12
5: 22
6: 35
7: 40
8: 44
9: 39
10: 34
11: 27
12: 34
13: 21
14: 21
15: 17
16: 10
17: 11
18: 3
19: 8
20: 5
21: 5
22: 2
23: 1
24: 0
25: 1
% = (0.0 0.0 0.251889168765743 1.00755667506297 3.02267002518892 5.54156171284635 8.81612090680101 10.0755667506297 11.0831234256927 9.82367758186398 8.56423173803526 6.80100755667506 8.56423173803526 5.2896725440806 5.2896725440806 4.28211586901763 2.51889168765743 2.77078085642317 0.755667506297229 2.01511335012594 1.25944584382872 1.25944584382872 0.503778337531486 0.251889168765743 0.0 0.251889168765743)
(0 0 1 4 12 22 35 40 44 39 34 27 34 21 21 17 10 11 3 8 5 5 2 1 0 1)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; T&E(2) sub-collection of the BRT+1-expands-minimals
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract the TE2 puzzles
(extract-lines-with-X-value
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals.txt")
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE-depth.txt")
    794
    2
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE2.txt"
)
=====> 397 puzzles


;;; check their BxB ratings
cd /Users/berthier/Projects/CSP-Rules/SHC/SHC5
java -jar SHC.jar BxB -input /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals-TE2.txt -output /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/Sample40/BRT+1-expands-minimals-TE2-BxB.txt

(file-max-value
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE2-BxB.txt")
)
5

;;; Compute their BxB distribution:
max = 5

(X-distribution-p-to-q
    (str-cat ?*TE2-EL* "Sample40/BRT+1-expands-minimals-TE2-BxB.txt")
    397
    0
    5
)
0: 0
1: 87
2: 244
3: 50
4: 13
5: 3
% = (0.0 21.9143576826196 61.4609571788413 12.5944584382872 3.27455919395466 0.755667506297229)
(0 87 244 50 13 3)


