;;; results with only whips[2], S3 and degenerate-cyclic-tridagon rule loaded


(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (st-cat ?*39c* "puzzles.txt")
    0 2650
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 6m 42.77s
;;; TOTAL RESOLUTION TIME = 5m 47.54s
;;; MAX TIME = 0.2s
(length$ ?*degenerate-cyclic-tridagon-list*)
15
?*degenerate-cyclic-tridagon-list*
(203 1032 1033 1034 1035 1496 1497 1502 1503 1906 1951 2006 2054 2088 2417)

