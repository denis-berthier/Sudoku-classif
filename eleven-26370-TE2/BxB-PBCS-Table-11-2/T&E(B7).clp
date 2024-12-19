


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

(load (str-cat ?*RulesDir* "CHAINS3D-M7wbis2/L7-NRCZT7.clp"))
(load (str-cat ?*RulesDir* "BRAIDS3D-M7wbis2-B22/L7-B-NRCZT7.clp"))

(bind ?*print-actions* TRUE)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

B7

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 0 500 ?*TE-B6*)

?*no-sol-list*
(length$ ?*solved-list*)
(pretty-print-ordered-nb-list ?*solved-list* 100)


(defglobal ?*TE-[B6]+B7* = (create$
     3 22 
))


(length$  ?*TE-[B6]+B7*)








(defglobal ?*TE-B7* = (sorted-union$ ?*TE-B6* ?*TE-[B6]+B7* 500))
(length$ ?*TE-B7*)
(pretty-print-ordered-nb-list ?*TE-B7* 100)

(defglobal ?*TE-B7* = (create$
;;; tous entre 1 et 500

))



(length$ ?*TE-B7*)






----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Calculs refaits avec CSP-Rules-V2.1 pour tous les puzzles dans la table 11.2 de [PBCS]

(defglobal ?*TE-[B6]+B7* = (create$
    22
))

(defglobal ?*TE-B7* = (create$
    all
