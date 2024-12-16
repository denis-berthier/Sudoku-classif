
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  SAMPLE OF 500 PUZZLES FROM MITH 158,276 T&E(3)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
;;; create the sample list
(p-different-ordered-numbers-out-of-n
    500
    158276
)


;;; extract the 500 puzzles making the sample
(load
    (str-cat ?*TE3* "sample500/list.txt")
)

(extract-lines-in-list
    (str-cat ?*TE3* "puzzles.txt")
    158276
    ?*sample*
    (str-cat ?*TE3* "Sample500/puzzles.txt")
)

;;; find all their minimals
cd /Users/berthier/Projects/Sudoku_Software/Other-Solvers/gsf_solver/gsf
./sudoku-gsf.exe -f'%#.c' -m -qFN -e'M>0&&uniq()&&minimal==1' < /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-MITH/847778-TE3/158276-min-expands/Sample500/puzzles.txt | sed s/0/./g > /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-MITH/847778-TE3/158276-min-expands/Sample500/minimals.txt
=====> 2101 puzzles (ratio 1 to 4.2)


(record-nb-clues
    (str-cat ?*TE3* "Sample500/minimals.txt")
    (str-cat ?*TE3* "Sample500/nb-clues.txt")
    2101
)
(file-mean-and-sd
    (str-cat ?*TE3* "Sample500/nb-clues.txt")
)
(27.1389153187441 1.31763937184542)

(record-nb-cands-at-start
    (str-cat ?*TE3* "Sample500/minimals.txt")
    (str-cat ?*TE3* "Sample500/nb-cands.txt")
    2101
)
(file-mean-and-sd
    (str-cat ?*TE3* "Sample500/nb-cands.txt")
)
(209.395337773549 10.9067161788936)
