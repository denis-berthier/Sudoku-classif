
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  SAMPLE OF 1,000 PUZZLES FROM MITH 158,276 T&E(3)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; create the sample list
(p-different-ordered-numbers-out-of-n
    1000
    158276
)

;;; extract the 1000 puzzles making the sample
(load
    (str-cat ?*TE3-Mi* "sample1000/list.txt")
)

(extract-lines-in-list
    (str-cat ?*TE3-Mi* "puzzles.txt")
    158276
    ?*sample*
    (str-cat ?*TE3-Mi* "Sample1000/puzzles.txt")
)

;;; find all their minimals
cd /Users/berthier/Projects/Sudoku_Software/Other-Solvers/gsf_solver/gsf
./sudoku-gsf.exe -f'%#.c' -m -qFN -e'M>0&&uniq()&&minimal==1' < /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-MITH/847778-TE3/158276-min-expands/Sample1000/puzzles.txt | sed s/0/./g > /Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-MITH/847778-TE3/158276-min-expands/Sample1000/minimals.txt
=====> 4844 puzzles (ratio 1 to 4.84)


(record-nb-clues
    (str-cat ?*TE3-Mi* "Sample1000/minimals.txt")
    (str-cat ?*TE3-Mi* "Sample1000/nb-clues.txt")
    4844
)
(file-min-value
    (str-cat ?*TE3-Mi* "Sample1000/nb-clues.txt")
)
min = 23
(file-max-value
    (str-cat ?*TE3-Mi* "Sample1000/nb-clues.txt")
)
max = 31
(file-mean-and-sd
    (str-cat ?*TE3-Mi* "Sample1000/nb-clues.txt")
)
(27.0489164086687 1.21712978543007)

(record-nb-cands-at-start
    (str-cat ?*TE3-Mi* "Sample1000/minimals.txt")
    (str-cat ?*TE3-Mi* "Sample1000/nb-cands.txt")
    4844
)
(file-mean-and-sd
    (str-cat ?*TE3-Mi* "Sample1000/nb-cands.txt")
)
(209.409907120743 9.86894436298367)


(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*TE3-Mi* "Sample1000/nb-clues.txt")
    (str-cat ?*TE3-Mi* "Sample1000/nb-cands.txt")
    4844
)
E(nb-clues) = 27.0545004128819
E(nb-cands) = 209.45313790256
Sigma(nb-clues) = 1.15353296135654
Sigma(nb-cands) = 9.40007162049212
correlation-coefficient(nb-clues, nb-cands) = -0.860556059462501
regression nb-cands = a * nb-clues + b
a = -7.01262024006933
b = 399.1760750829
