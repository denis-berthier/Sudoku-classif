;;; results with only whips[2], S3Fin and tridagon rules loaded


(mute-print-options)
(solve-n-grids-after-first-p-from-text-file
    (str-cat ?*39c* "puzzles.txt")
    0 2650
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.2
;;; TOTAL OUTER TIME = 6m 34.83s
;;; TOTAL RESOLUTION TIME = 5m 42.46s
;;; MAX TIME = 0.21s
(length$ ?*tridagon-list*)
0
