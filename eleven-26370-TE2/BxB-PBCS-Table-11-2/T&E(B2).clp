


calculs faits avec SudoRules13 version M7Wbis2B22, puis, après 1000, avec SudoRules-15c.1.12 basé sur CSP-Rules-1.0



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
(defglobal ?*grids-file* = "/Users/berthier/Desktop/Eleven-hardest-V2-26370/puzzles.txt")

(defglobal ?*inference-engine* = CLIPS)
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

B2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





TODO (series of last 100s):
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 3274 100 (create$)); last 100 11.2
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 5930 100 (create$)); last 100 11.1
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 7748 100 (create$)); last 100 11.0
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 10175 100 (create$)); last 100 10.9
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 12106 100 (create$)); last 100 10.8
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 17712 100 (create$)); last 100 10.7
; done (solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 26270 100 (create$)); last 100 10.6





?*no-sol-list*
(length$ ?*solved-list*)
(pretty-print-ordered-nb-list ?*solved-list* 100)


(defglobal ?*TE-[B1]+B2* = (create$
;;; rien entre 0 et 1000
))



(length$  ?*TE-[B1]+B2*)








(defglobal ?*TE-B2* = (sorted-union$ ?*TE-B1* ?*TE-[B1]+B2* 26370))
(length$ ?*TE-B2*)
(pretty-print-ordered-nb-list ?*TE-B2* 100)

(defglobal ?*TE-B2* = (create$
;;; rien entre 0 et 1000
;;; 2 entre 1001 et 1500
    1159 1247
;;; 7 entre 1501 et 2000
    1697 1700 1713 1804 1835 1853 1867 

;;;;;;;;;;

;;; 3 entre 1686 et 1785; revoir le cas 1785
    1697 1700 1713
;;; 9 entre 3375 et 3474
    3383 3404 3405 3408 3409 3415 3434 3446 3453
;;; 23 entre 6031 et 6130
    6038 6040 6041 6048 6051 6053 6055 6058 6061 6062 6064 6066 6069 6072 6076 6077 6082 6088 6101 6117 6125 6126 6130
;;; 70 entre 7849 et 7948
    7849 7850 7852 7853 7855 7857 7858 7859 7860 7861 7863 7865 7866 7868 7870 7874 7877 7879 7880 7881 7882 7884 7885 7887 7888 7889 7890 7891 7892 7893 7894 7895 7896 7897 7899 7900 7901 7902 7903 7904 7905 7907 7909 7911 7913 7915 7917 7918 7921 7922 7923 7925 7927 7929 7930 7932 7933 7934 7935 7936 7937 7938 7939 7940 7941 7944 7945 7946 7947 7948
;;; 22 entre 10276 et 10375
    10298 10304 10307 10308 10315 10319 10321 10325 10328 10333 10341 10344 10346 10348 10351 10355 10356 10358 10362 10364 10368 10372
;;; 32 entre 13207 et 13306
    13208 13210 13213 13214 13217 13218 13226 13227 13230 13234 13237 13239 13240 13242 13247 13248 13250 13251 13253 13254 13255 13257 13263 13264 13266 13270 13274 13278 13282 13291 13293 13295
;;; 50 entre 17813 et 17912
    17815 17816 17817 17819 17822 17823 17824 17826 17828 17829 17832 17836 17839 17840 17844 17846 17847 17850 17851 17854 17855 17859 17864 17865 17868 17869 17870 17871 17872 17873 17874 17875 17877 17878 17881 17888 17890 17892 17894 17896 17897 17898 17899 17900 17902 17903 17904 17906 17908 17910
    

;;;;;;;;;;


;;; 205 entre 26001 et 26370
    26004 26007 26008 26010 26011 26012 26016 26019 26020 26021 26022 26023 26024 26025 26026 26027 26028 26029 26033 26035 26036 26037 26043 26044 26045 26052 26053 26054 26055 26056 26058 26059 26060 26062 26063 26064 26066 26067 26068 26070 26075 26077 26078 26079 26083 26086 26087 26089 26090 26091 26093 26097 26100 
    26103 26104 26105 26106 26107 26108 26109 26110 26111 26112 26113 26116 26117 26118 26119 26120 26121 26122 26126 26128 26129 26130 26131 26132 26133 26134 26136 26137 26138 26143 26144 26145 26146 26149 26150 26153 26156 26158 26159 26167 26169 26172 26173 26174 26175 26177 26179 26180 26181 26182 26183 26185 26189 26190 26191 26192 26193 26194 26196 26197 
    26203 26204 26205 26206 26207 26211 26216 26217 26219 26220 26221 26222 26231 26232 26233 26235 26236 26237 26238 26239 26240 26241 26242 26244 26245 26246 26249 26250 26251 26252 26254 26255 26256 26257 26258 26262 26263 26266 26268 26269 26270 26271 26273 26274 26275 26276 26277 26281 26283 26284 26287 26288 26290 26293 26295 26299 26300 
    26303 26306 26309 26310 26311 26312 26318 26319 26320 26322 26323 26324 26325 26326 26327 26328 26334 26338 26341 26342 26343 26350 26351 26352 26353 26357 26358 26359 26361 26362 26364 26365 26368 26369 26370
))



(length$ ?*TE-B2*)


26329 6 phases

Vérifier qu'aucun n'est dans B1B = gB
(solve-n-grids-after-first-p-from-text-file-included-but-excluding ?*grids-file* 0 26370 ?*TE-B2* (create$)): rien


----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Calculs refaits avec CSP-Rules-V2.1
in B2B
(bind ?*print-actions* FALSE)
(bind ?*print-RS-after-Singles* FALSE)
(bind ?*print-RS-after-whips[1]* FALSE)
(bind ?*print-solution* FALSE)
(bind ?*print-final-RS* FALSE)
(bind ?*print-hypothesis* FALSE)

(defglobal ?*grids-file* = "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/puzzles.txt")
(defglobal ?*solns-file* =
    "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/solutions.txt")

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 0 1000)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 15h 19m 30.32s
;;; TOTAL RESOLUTION TIME = 15h 18m 49.4s
;;; MAX TIME = 2m 1.15s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 1000 1000)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 15h 5m 37.11s
;;; TOTAL RESOLUTION TIME = 15h 4m 57.5s
;;; MAX TIME = 2m 25.67s
?*solved-list*

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 3374 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 11m 47.55s
;;; TOTAL RESOLUTION TIME = 1h 11m 43.7s
;;; MAX TIME = 1m 43.72s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 6030 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 23m 15.07s
;;; TOTAL RESOLUTION TIME = 1h 23m 11.72s
;;; MAX TIME = 2m 20.17s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 7848 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 53m 8.75s
;;; TOTAL RESOLUTION TIME = 53m 7.25s
;;; MAX TIME = 1m 58.59s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 10275 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 17m 27.7s
;;; TOTAL RESOLUTION TIME = 1h 17m 24.47s
;;; MAX TIME = 2m 18.7s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 13206 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 18m 51.25s
;;; TOTAL RESOLUTION TIME = 1h 18m 48.29s
;;; MAX TIME = 2m 22.22s

(solve-n-grids-after-first-p-from-text-file ?*grids-file* 17812 100)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 1h 23m 18.47s
;;; TOTAL RESOLUTION TIME = 1h 23m 15.99s
;;; MAX TIME = 2m 23.1s



(defglobal ?*TE-B2* = (create$
    ;;; rien entre 1 et 1000
    ;;; 11 entre 1001 et 2000
    1159 1247 1697 1700 1713 1762 1797 1804 1835 1853 1867
))
    
    
(defglobal ?*TE-B2* = (create$
    ;;; rien entre 1 et 1000
;;;;;;;;; 1st 100s of each SER slice
    ;;; 4 entre 1686 et 1785 inclus (1762 is new)
    1697 1700 1713 1762
    ;;; 9 entre 3375 et 3474 inclus
    3383 3404 3405 3408 3409 3415 3434 3446 3453
    ;;; 24 entre 6031 et 6130 inclus (6067 is new)
    6038 6040 6041 6048 6051 6053 6055 6058 6061 6062 6064 6066 6067 6069 6072 6076 6077 6082 6088 6101 6117 6125 6126 6130
    ;;; 71 entre 7849 et 7948 inclus (7856 is new)
    7849 7850 7852 7853 7855 7856 7857 7858 7859 7860 7861 7863 7865 7866 7868 7870 7874 7877 7879 7880 7881 7882 7884 7885 7887 7888 7889 7890 7891 7892 7893 7894 7895 7896 7897 7899 7900 7901 7902 7903 7904 7905 7907 7909 7911 7913 7915 7917 7918 7921 7922 7923 7925 7927 7929 7930 7932 7933 7934 7935 7936 7937 7938 7939 7940 7941 7944 7945 7946 7947 7948
    ;;; 23 entre 10276 et 10375 inclus (10311 is new)
    10298 10304 10307 10308 10311 10315 10319 10321 10325 10328 10333 10341 10344 10346 10348 10351 10355 10356 10358 10362 10364 10368 10372
    ;;; 33 entre 13207 et 13306 inclus (13216 is new)
    13208 13210 13213 13214 13216 13217 13218 13226 13227 13230 13234 13237 13239 13240 13242 13247 13248 13250 13251 13253 13254 13255 13257 13263 13264 13266 13270 13274 13278 13282 13291 13293 13295
    ;;; 51 entre 17813 et 17912 inclus (17825 is new
    17815 17816 17817 17819 17822 17823 17824 17825 17826 17828 17829 17832 17836 17839 17840 17844 17846 17847 17850 17851 17854 17855 17859 17864 17865 17868 17869 17870 17871 17872 17873 17874 17875 17877 17878 17881 17888 17890 17892 17894 17896 17897 17898 17899 17900 17902 17903 17904 17906 17908 17910
))




;;; check that none is in B1B:
(solve-n-grids-after-first-p-from-text-file-restricted-to-and-excluding ?*grids-file* 1 17912 ?*TE-B2* (create$))
?*solved-list*
()






----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

;;; For comparison ofcomputation times when using solution
dans T&E(W2, 2):
(solve-n-grids-after-first-p-from-text-file-knowing-solutions
    ?*grids-file*
    ?*solns-file*
    3374 100
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 49m 58.84s au lieu de 1h 11m 47.55s
;;; TOTAL RESOLUTION TIME = 49m 55.92s
;;; MAX TIME = 1m 1.63s
?*solved-list* correct
(3383 3404 3405 3408 3409 3415 3434 3446 3453)



tests de solve-n-grids-after-first-p-from-text-file-knowing-solutions:
OK dans T&E(BRT, 2):
(solve-n-grids-after-first-p-from-text-file
    ?*grids-file*
    ?*solns-file*
    6030 100
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 14m 34.94s
;;; TOTAL RESOLUTION TIME = 14m 34.77s
;;; MAX TIME = 1m 12.7s
(length$ ?*solved-list*)
100

(solve-n-grids-after-first-p-from-text-file-knowing-solutions
    ?*grids-file*
    ?*solns-file*
    6030 100
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 13m 22.64s
;;; TOTAL RESOLUTION TIME = 13m 22.42s
;;; MAX TIME = 57.83s
(length$ ?*solved-list*)
100
