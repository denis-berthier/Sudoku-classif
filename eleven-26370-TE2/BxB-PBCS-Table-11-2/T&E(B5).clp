


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
(defglobal ?*grids-file* = "/Users/berthier/Desktop/Eleven-hardest-V2-26370/puzzles.txt")

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

(bind ?*print-actions* FALSE)
(bind ?*print-hypothesis* FALSE)
(bind ?*print-levels* FALSE)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

B5

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 650 50 ?*TE-B4*)


TODO (series of 1st 100''s):
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 1685 100 ?*TE-B4*); 1st 100 11.2
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 3374 100 ?*TE-B4*); 1st 100 11.1
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 10275 100 ?*TE-B4*); 1st 100 10.8
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 13206 100 ?*TE-B4*); 1st 100 10.7
(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 17812 100 ?*TE-B4*); 1st 100 10.6


?*no-sol-list*
(length$ ?*solved-list*)
(pretty-print-ordered-nb-list ?*solved-list* 100)


(defglobal ?*TE-[B4]+B5* = (create$
;;; 27 between 1 and 50
     1 2 4 6 8 9 10 14 18 19 21
    ;;; coupure de courant ; repris à 22
    25 
    ;;; reprise avec SudoRules-15c.1.12 basé sur CSP-Rules-1.0
    ;;; 26 not solved, in 56,984s instead of 105,618s
    28 31 32 35 37 38 39 40 41 43 44 47 48 49 50 
;;; 30 entre 51 et 100
    51 52 56 57 59 64 65 66 68 69 70 72 73 78 79 80 81 84 86 87 88 89 90 91 92 93 94 95 97 98 
;;; 17 entre 101 et 150
    102 109 115 121 122 126 130 131 135 136 138 141 143 144 145 148 149 
;;; 20 entre 151 et 200
    154 155 156 159 161 164 165 171 172 174 175 177 179 186 187 189 191 195 197 199
;;; 16 entre 201 et 250
    201 203 204 207 210 214 215 218 226 230 233 235 237 241 242 244 
;;; 18 entre 251 et 300
    257 261 262 263 264 267 268 271 273 279 280 281 285 288 290 296 299 300
;;; 21 entre 301 et 350
    303 304 305 307 308 309 312 313 315 316 317 321 324 325 327 330 338 343 344 345 346
;;; 17 entre 351 et 400
    352 355 359 364 369 370 371 372 375 378 380 381 383 393 394 396 397
;;; 14 entre 401 et 450
    407 414 416 418 422 431 432 436 437 444 447 448 449 450
;;; 9 entre 451 et 500
    452 453 455 456 463 465 473 475 477
    
;;; 8 entre 501 et 550
    502 515 519 529 531 534 536 550
;;; 7 entre 551 et 600
    566 568 574 575 583 597 599
;;; 7 entre 601 et 650
    610 615 618 625 633 634 637 
;;; xxx entre 651 et 700
    653 657 659 ... reprendre plus tard
;;; xxx entre 701 et 750
;;; xxx entre 751 et 800
;;; xxx entre 801 et 850
;;; xxx entre 851 et 900
;;; xxx entre 901 et 950
;;; xxx entre 951 et 1000



;;;;;;;;;;;;;;;;
;;; 12 entre 479 et 578
    502 515 519 529 531 534 536 550 566 568 574 575
;;; 8 entre 1686 et 1785
    1720 1725 1732 1752 1755 1769 1777 1785
;;; 1 entre 3375 et 3474
    3397
;;; 0 entre 6031 et 6130
;;; 0 entre 7849 et 7948
;;; 1 entre 10276 et 10375
    10284
;;; 0 entre 13207 et 13306
;;; 0 entre 17813 et 17912


))


(length$  ?*TE-[B4]+B5*)


;;; dans 40, 41, 141, 165 531 633 un non-whip braid[3]

non-whip braid[3] dans 145, 191, 397 515 




(defglobal ?*TE-B5* = (sorted-union$ ?*TE-B4* ?*TE-[B4]+B5* 26370))
(length$ ?*TE-B5*)
(pretty-print-ordered-nb-list ?*TE-B5* 100)

(defglobal ?*TE-B5-old* = (create$
;;; 31 between 1 and 50
    1 2 4 6 7 8 9 10 14 18 19 21 25 28 31 32 33 35 36 37 38 39 40 41 42 43 44 47 48 49 50 
;;; 44 between 51 and 100
    51 52 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 86 87 88 89 90 91 92 93 94 95 96 97 98 
;;; 49 between 101 and 150
    101 102 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 
;;; 49 between 151 and 200
    151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200
;;; 50 between 201 and 250
    201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250
;;; 48 entre 251 et 300
    251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 288 290 291 292 293 294 295 296 297 298 299 300
;;; 47 entre 301 et 350
    301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 336 337 338 339 340 341 343 344 345 346 347 348 350
;;; 47 entre 351 et 400
    351 352 353 354 355 356 358 359 360 361 362 363 364 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 392 393 394 395 396 397 398 399 400
;;; 49 entre 401 et 450
    401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 442 443 444 445 446 447 448 449 450
;;; 50 entre 451 et 500
    451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500

    
;;; 50 entre 501 et 550
    501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550
;;; 50 entre 551 et 600
    551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600
;;; 50 entre 601 et 650
    601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650
;;; xxx entre 651 et 700
;;; xxx entre 701 et 750
;;; xxx entre 751 et 800
;;; xxx entre 801 et 850
;;; xxx entre 851 et 900
;;; xxx entre 901 et 950
;;; xxx entre 951 et 1000


;;;;;;;;;;;;;;;;
;;; tous entre 479 et 578
;;; tous entre 1686 et 1785
;;; tous entre 3375 et 3474
;;; tous entre 6031 et 6130
;;; tous entre 7849 et 7948
;;; tous entre 10276 et 10375
;;; tous entre 13207 et 13306
;;; tous entre 17813 et 17912
))



(length$ ?*TE-B5*)









----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Calculs refaits avec CSP-Rules-V2.1 pour les 106 puzzles avec SER >= 11.6
Entre 0 et 106

in B5B:

(bind ?*print-actions* FALSE)
(bind ?*print-RS-after-Singles* FALSE)
(bind ?*print-RS-after-whips[1]* FALSE)
(bind ?*print-solution* FALSE)
(bind ?*print-final-RS* FALSE)
(bind ?*print-hypothesis* FALSE)


(defglobal ?*TE-B3* = (create$))

(defglobal ?*TE-B4* = (create$
        7 33 36 42 58 60 61 62 63 67 71 74 75 76 77 82 83 96 101 104 105 106
    )
)

(defglobal ?*grids-file* = "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/puzzles.txt")
(defglobal ?*solns-file* =
    "/Users/berthier/Projects/CSP-Rules-Results/SudoRules-Results/HARDEST-PUZZLES/Elevens-hardest-V2-26370/solutions.txt")

(solve-n-grids-after-first-p-from-text-file-knowing-solutions-excluding
    ?*grids-file*
    ?*solns-file*
    0 106
    ?*TE-B4*
)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 49h 36m 59.59s
;;; TOTAL RESOLUTION TIME = 49h 36m 52.19s
;;; MAX TIME = 1h 24m 40.67s
?*solved-list*
(length$ ?*solved-list*)
59


(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 106 109 ?*TE-B4*)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 22h 47m 27.36s
;;; TOTAL RESOLUTION TIME = 22h 47m 21.89s
;;; MAX TIME = 1h 31m 21.13s

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file*  215 263 ?*TE-B4*)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 55h 23m 33.4s
;;; TOTAL RESOLUTION TIME = 55h 23m 21.68s
;;; MAX TIME = 1h 54m 27.92s

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file*  478 100 ?*TE-B4*)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 5h 46m 10.92s
;;; TOTAL RESOLUTION TIME = 5h 46m 10.9s
;;; MAX TIME = 54m 33.96s

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 1685 100 ?*TE-B4*)
;;; computer = MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.0.1
;;; TOTAL OUTER TIME = 3h 39.31s
;;; TOTAL RESOLUTION TIME = 3h 35.26s
;;; MAX TIME = 48m 52.54s

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 3374 100 ?*TE-B4*)
;;; TOTAL OUTER TIME = 29m 23.83s
;;; TOTAL RESOLUTION TIME = 29m 19.72s
;;; MAX TIME = 29m 19.72s

(solve-n-grids-after-first-p-from-text-file-excluding ?*grids-file* 10275 100 ?*TE-B4*)
;;; TOTAL OUTER TIME = 10m 32.02s
;;; TOTAL RESOLUTION TIME = 10m 29.5s
;;; MAX TIME = 10m 29.5s



(defglobal ?*TE-[B4]+B5* = (create$
    ;;; xx entre 1 et 106 inclus
    1 2 4 6 8 9 10 12 14 18 19 21 25 28 31 32 35 37 38 39 40 41 43 44 47 48 49 50 51 52 56 57 59 64 65 66 68 69 70 72 73 78 79 80 81 84 86 87 88 89 90 91 92 93 94 95 97 98 102
))
#12 added wrt old

(defglobal ?*TE-[B4]+B5* = (create$
    ;;; 3 entre 1 et 4 inclus
    1 2 4
    ;;; 9 entre 5 et 24 inclus
    6 8 9 10 12 14 18 19 21
    ;;; 20 entre 25 et 58 inclus
    25 28 31 32 35 37 38 39 40 41 43 44 47 48 49 50 51 52 56 57
    ;;; 27 entre 59 et 106 inclus
    59 64 65 66 68 69 70 72 73 78 79 80 81 84 86 87 88 89 90 91 92 93 94 95 97 98 102
    ;;; 42 entre 107 et 215 inclus
    109 115 121 122 126 130 131 135 136 138 141 143 144 145 148 149 154 155 156 161 164 165 171 172 174 175 177 179 186 187 189 191 195 197 199 201 203 204 207 210 214 215
    ;;; 88 entre 216 et 478 inclus
    218 226 230 233 235 237 241 242 244 257 261 262 263 264 267 268 271 273 279 280 281 285 288 290 296 299 300 303 304 305 307 308 309 312 313 315 316 317 321 324 325 327 330 338 343 344 345 346 352 355 359 364 369 370 371 372 375 378 380 381 383 393 394 396 397 407 414 416 418 422 431 432 436 437 444 447 448 449 450 452 453 455 456 463 465 473 475 477
    ;;; 12 entre 479 et 578 inclus
    502 515 519 529 531 534 536 550 566 568 574 575
    ;;; 8 entre 1686 et 1785 inclus
    1720 1725 1732 1752 1755 1769 1777 1785
    ;;; 1 entre 3375 et 3474 inclus
    3397
    ;;; 0 entre 6031 et 6130 inclus
    ;;; 0 entre 7849 et 7948 inclus
    ;;; 0 entre 10276 et 10375 inclus
    10284
    ;;; 0 entre 13207 et 13306 inclus
    ;;; 0 entre 17813 et 17912 inclus
))

(defglobal ?*TE-B5* = (sorted-union$ ?*TE-B4* ?*solved-list* 17912))

(defglobal ?*TE-B5* = (create$
    ;;; xx entre 1 et 106 inclus
    1 2 4 6 7 8 9 10 12 14 18 19 21 25 28 31 32 33 35 36 37 38 39 40 41 42 43 44 47 48 49 50 51 52 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 86 87 88 89 90 91 92 93 94 95 96 97 98 101 102 104 105 106
)

(length$ ?*TE-B5*)
81
#12 added

(defglobal ?*TE-B5* = (create$
    ;;; 3 entre 1 et 4 inclus
    1 2 4
    ;;; 10 entre 5 et 24 inclus
    6 7 8 9 10 12 14 18 19 21
    ;;; 24 entre 25 et 58 inclus
    25 28 31 32 33 35 36 37 38 39 40 41 42 43 44 47 48 49 50 51 52 56 57 58
    ;;; 44 entre 59 et 106 inclus
    59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 86 87 88 89 90 91 92 93 94 95 96 97 98 101 102 104 105 106
    ;;; 108 entre 107 et 215 inclus (only #176 not solved)
    107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215
    ;;; 254 entre 216 et 478 inclus
    216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 288 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 336 337 338 339 340 341 343 344 345 346 347 348 350 351 352 353 354 355 356 358 359 360 361 362 363 364 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478
    ;;; 100 entre 479 et 578 inclus (all)
    ;;; 100 entre 1686 et 1785 inclus (all)
    ;;; 100 entre 3375 et 3474 inclus (all)
    ;;; 100 entre 6031 et 6130 inclus (all)
    ;;; 100 entre 7849 et 7948 inclus (all)
    ;;; 100 entre 10276 et 10375 inclus (all)
    ;;; 100 entre 13207 et 13306 inclus (all)
    ;;; 100 entre 17813 et 17912 inclus (all)
))
