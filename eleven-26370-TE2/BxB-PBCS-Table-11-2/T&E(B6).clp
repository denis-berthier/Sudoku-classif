


calculs faits avec SudoRules13 version M7Wbis2B22, puis avec SudoRules-15c.1.12 basé sur CSP-Rules-1.0



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Ce qui est chargé

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defglobal ?*SudoDir* = "/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/")
(defglobal ?*RulesDir* = (str-cat ?*SudoDir* "Rules/"))

(defglobal ?*PuzzlesDir* = (str-cat "/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules15b/" "Results/"))
(defglobal ?*grids-file* = (str-cat ?*PuzzlesDir* "Eleven-hardest-V2-26370/puzzles.txt"))

(defglobal ?*inference-engine* = CLIPS)
; (defglobal ?*inference-engine* = JESS)
(defglobal ?*rating-type* = "B")


(batch (str-cat ?*SudoDir* "Loaders/L0.clp"))
(load (str-cat ?*RulesDir* "T&E/contexts.clp"))
(load (str-cat ?*RulesDir* "T&E/TE1.clp"))
(bind ?*print-actions* FALSE)
(bind ?*print-hypothesis* FALSE)
(bind ?*print-solution* FALSE)


(load (str-cat ?*RulesDir* "SUBINT/L1-N1-naked-single.clp"))
(load (str-cat ?*RulesDir* "SUBINT/L1-H1-hidden-single.clp"))
(load (str-cat ?*RulesDir* "SUBINT/L1-RCiB.clp"))
(load (str-cat ?*RulesDir* "SUBINT/L1-BiRC.clp"))

(bind ?*SudoRulesSubVersionNumber* 7wbis2B22)
(bind ?*SudoRulesLevelSymbol* pB-NRCZT)



(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L2-BIVAL3D.clp"))


(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L2-NRCZT2.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L2-B-NRCZT2.clp"))

(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L3-NRCZT3.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L3-B-NRCZT3.clp"))

(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L4-NRCZT4.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L4-B-NRCZT4.clp"))

(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L5-NRCZT5.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L5-B-NRCZT5.clp"))

(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L6-NRCZT6.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L6-B-NRCZT6.clp"))

(bind ?*print-actions* TRUE)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

B6

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 10 1 ?*TE-B5*)

?*no-sol-list*
(length$ ?*solved-list*)
(pretty-print-ordered-nb-list ?*solved-list* 100)


(defglobal ?*TE-[B5]+B6* = (create$
     5 11 12 13 15 
     ;;; from now on, using CSP-Rules and SudoRules 15c.1.12
     16 17 20 23 24 26 27 29 30 34 45 46 
     53 54 55 85 99 100 
     103 
     176 
     287 289 
     335 342 349
     357 365 391 
     441
))

(defglobal ?*TE-[B5]+B6* = (create$
    ;;; xx entre 1 et 4 inclus
    ;;; xx entre 5 et 24 inclus
    ;;; xx entre 25 et 58 inclus
    ;;; xx entre 59 et 106 inclus
    ;;; xx entre 107 et 215 inclus
    ;;; xx entre 216 et 478 inclus
    ;;; xx entre 479 et 578 inclus
    ;;; xx entre 1686 et 1785 inclus
    ;;; xx entre 3375 et 3474 inclus
    ;;; xx entre 6031 et 6130 inclus
    ;;; xx entre 7849 et 7948 inclus
    ;;; xx entre 10276 et 10375 inclus
    ;;; xx entre 13207 et 13306 inclus
    ;;; xx entre 17813 et 17912 inclus
))


(length$  ?*TE-[B5]+B6*)


391 en cours
   ???


;;; 3, 22 not solved; but will be in B7


(defglobal ?*TE-B6* = (sorted-union$ ?*TE-B5* ?*TE-[B5]+B6* 500))
(length$ ?*TE-B6*)
(pretty-print-ordered-nb-list ?*TE-B6* 100)

(defglobal ?*TE-B6* = (create$
;;; 48 entre 1 et 50
    1 2 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 
;;; tous entre 51 et 500
))

(defglobal ?*TE-B6* = (create$



(length$ ?*TE-B6*)
))








----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Calculs refaits avec CSP-Rules-V2.1 pour les 106 puzzles avec SER >= 11.6
Entre 0 et 106

in B6B:

(bind ?*print-actions* FALSE)
(bind ?*print-RS-after-Singles* FALSE)
(bind ?*print-RS-after-whips[1]* FALSE)
(bind ?*print-solution* FALSE)
(bind ?*print-final-RS* FALSE)
(bind ?*print-hypothesis* FALSE)


(defglobal ?*grids-file* = "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/puzzles.txt")
(defglobal ?*solns-file* =
    "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/solutions.txt")

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 106 109 ?*TE-B5*)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 49m 56.13s
;;; TOTAL RESOLUTION TIME = 1h 49m 49.08s
;;; MAX TIME = 1h 49m 49.08s

TODO:


(defglobal ?*TE-B5* = (create$
    1 2 4 6 7 8 9 10 12 14 18 19 21 25 28 31 32 33 35 36 37 38 39 40 41 42 43 44 47 48 49 50 51 52 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 86 87 88 89 90 91 92 93 94 95 96 97 98 101 102 104 105 106
    )
)
(length$ ?*TE-B5*)
81

(solve-n-grids-after-first-p-from-text-file-knowing-solutions-excluding
    ?*grids-file*
    ?*solns-file*
    0 106
    ?*TE-B5*
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 32h 23m 23.0s
;;; TOTAL RESOLUTION TIME = 32h 23m 11.74s
;;; MAX TIME = 2h 54m 0.57s
?*solved-list*
(length$ ?*solved-list*)
24

(solve-n-grids-after-first-p-from-text-file-knowing-solutions-excluding
    ?*grids-file*
    ?*solns-file*
    215 263
    ?*TE-B5*
)


(defglobal ?*TE-[B5]+B6* = (create$
    3 5 11 13 15 16 17 20 23 24 26 27 29 30 34 45 46 53 54 55 85 99 100 103
))

(defglobal ?*TE-[B5]+B6* = (create$
    ;;; 1 entre 1 et 4 inclus
    3
    ;;; 9 entre 5 et 24 inclus
    5 11 13 15 16 17 20 23 24
    ;;; 10 entre 25 et 58 inclus
    26 27 29 30 34 45 46 53 54 55
    ;;; 4 entre 59 et 106 inclus
    85 99 100 103
    ;;; 1 entre 107 et 215 inclus
    176
    ;;; 9 entre 216 et 478 inclus
    287 289 335 342 349 357 365 391 441
    ;;; 0 entre 479 et 578 inclus
    ;;; 0 entre 1686 et 1785 inclus
    ;;; 0 entre 3375 et 3474 inclus
    ;;; 0 entre 6031 et 6130 inclus
    ;;; 0 entre 7849 et 7948 inclus
    ;;; 0 entre 10276 et 10375 inclus
    ;;; 0 entre 13207 et 13306 inclus
    ;;; 0 entre 17813 et 17912 inclus
))

    
(defglobal ?*TE-B6* = (sorted-union$ ?*TE-B5* ?*solved-list* 17912))

(defglobal ?*TE-B6* = (create$
    ;;; 4 entre 1 et 4 inclus (all)
    1 2 3 4
    ;;; 19 entre 5 et 24 inclus (all)
    5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 23 24
    ;;; 34 entre 25 et 58 inclus (all)
    25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58
    ;;; 48 entre 59 et 106 inclus (all)
    59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106
    ;;; 109 entre 107 et 215 inclus (all)
    ;;; 263 entre 216 et 478 inclus (all)
    ;;; 100 entre 479 et 578 inclus (all)
    ;;; 100 entre 1686 et 1785 inclus (all)
    ;;; 100 entre 3375 et 3474 inclus (all)
    ;;; 100 entre 6031 et 6130 inclus (all)
    ;;; 100 entre 7849 et 7948 inclus (all)
    ;;; 100 entre 10276 et 10375 inclus (all)
    ;;; 100 entre 13207 et 13306 inclus (all)
    ;;; 100 entre 17813 et 17912 inclus (all)
))
(length$ ?*TE-B6*)
105
(not-in-list$ ?*TE-B6* 106)
22
Only puzzle in B7B

