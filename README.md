# Sudoku-Classif<br><br>

## Sudoku puzzle collections and their classifications<br><br>
<br><br>

## 1. Introduction and general background
The classification results in this repository rely on many concepts introduced in the publications listed at the end of this README file. <br>
They have been used to fill in the tables in [HCCS2] and/or [UMNR].

This repository analyses various puzzle collections according to their main universal T&E-depth classification, according to the relevant universal B or BxB sub-classifications and/or according to the addition of various exotic patterns.<br>
Most collections also contain more elementary data (such as number of clues or of candidates) allowing to compute basic statistics.<br>
However, due to its special importance in any approach to unbiased classification and due to the volume of data it contains, the controlled-bias collection of puzzles in T&E(1) remains in a separate repository: (https://github.com/denis-berthier/Controlled-bias_Sudoku_generator_and_collection).<br>

Note that most of the results appearing in this repository were obtained with the CSP-Rules software (https://github.com/denis-berthier/CSP-Rules-V2.1) and involved thousands of hours of processor time. Some of the results (T&E-depths, B-ratings, BxB-classif) were obtained with the SHC software (https://github.com/denis-berthier/Sudoku_Hierarchical_Classifier)<br>

This repository replaces and largely extends two previous repositories (https://github.com/denis-berthier/Classifications-of-TE3-Sudokus and https://github.com/denis-berthier/Classification-of-TE2-Sudokus) that will soon be archived.
<br><br>


### 1.1. The T&E(T, n) procedure and the T&E-depth of a puzzle
The T&E(T, n) procedure has been formally defined in my books [CRT] and [PBCS] for any finite binary Constraint Satisfaction Problem (CSP), for any integer n≥0 and for any resolution theory T with the confluence property. The purpose of this section is not to introduce it: see [BRT] or [PBCS].<br>
The T&E(T, n) procedure implies the existence of _a universal T&E-depth classification of all the instances of all the finite binary Constraint Satisfaction Problems_.<br>

Here, I shall always take T to be the universal basic resolution theory BRT, consisting of only two resolution rules: the elimination of candidates in direct contradiction with decided values and the Singles rule. I shall therefore omit the parameter T and write T&E(1), T&E(2)...<br>
I shall also consider only the 9x9 Sudoku CSP and "puzzle" will always mean "9x9 Sudoku puzzle".<br>

Until March 2022, all the known puzzles were in T&E(0, 1 or 2) [and even, for those strictly in T&E(2), in the part of it identified in the referenced publications as BxB ≤ 7].<br>
Notice that puzzles in T&E(2) are known to be extremely rare with respect to puzzles in T&E(1) and puzzles in T&E(3) are probably extremely rare with respect to puzzles in T&E(2).

But in March 2022, while the search for the "hardest" puzzles had been running almost since the first days of Sudoku, Philip Newman (alias "mith" on the Sudoku forums), a famous creator of remarkable Sudoku puzzles, found a very special puzzle ("Loki") : http://forum.enjoysudoku.com/post317749.html?hilit=loki#p317749. Loki was first noticed as a very rare object, the 10th puzzle to have SER (Sudoku Explainer Rating) 11.9 - the highest known SER for a puzzle at that time (and still now).<br>

Soon after that, I noticed that Loki was not in T&E(2) and I suggested a new way to look for the "potentially hardest" puzzles (http://forum.enjoysudoku.com/the-hardest-sudokus-new-thread-t6539-1048.html): use the T&E-depth instead of  the previously used SER as a measure of "hardness".<br>

This led to a sudden surge in the number of potentially "hardest puzzles", all in T&E(3), most of them found by mith. I showed that they were indeed all in the second lowest part of T&E(3), i.e. in B2BB=T&E(W2, 2) and that they all had a newly discovered impossible 3-digit pattern, the tridagon (of course with additional candidates, the "guardians", to avoid the impossibility).<br>

Later, this also led other puzzle diggers to find puzzles in T&E(2) above the previous B7B threshold.<br><br>

### 1.2 General contents of this repository
Each folder corresponds to a specific collection of puzzles.<br>
Each folder has a "RESULTS.clp" file and a certain number of ".txt" files; all the latter have the same length (unless otherwise mentioned). The same file names are used consistently in all the folders. <br>
All the files have Unix line endings. (You may have to change the line endings if you are using Windows.)<br>
Note that some folders may have sub-folders, corresponding to sub-collections that will be further described wherever relevant.<br>

#### File names common to all the folders 
Only the relevant files will be present in each folder.<br>
Besides the following ones, additional files may appear in some folders.<br>
* the "RESULTS.clp" file contains the commands for repeating all the computations and the associated results;
* the "puzzles.txt" file contains the puzzles in the collection dealt with in the folder; it is the common reference for all the other files in the folder;
* the "nb-clues.txt" file contains the numbers of clues at the start;
* the "nb-cands.txt" file contains the numbers of candidates at the start;
* the "puzzles-expands.txt" file contains the BRT-expansions of the puzzles in "puzzles.txt"
* the "nb-clues-after-BRT.txt" file contains the numbers of clues after BRT has been applied;
* the "nb-cands-after-BRT.txt" file contains the numbers of candidates after BRT has been applied;
* the "density.txt" file contains the densities of the underlying graph of candidates at the start;
* the "mdel.txt" file contains the mean number of candidates deleted after BRT per clue at the start;
* the "SER.txt" file contains the Sudoku Explainer ratings;
* the "TE-depth.txt" file contains the T&E depths;
* for puzzles in T&E(1), the "W-ratings.txt" file contains the W ratings; 
* for puzzles in T&E(1), the "gW-ratings.txt" file contains the gW ratings; 
* for puzzles in T&E(1), the "B-ratings.txt" file contains the B ratings; 
* for puzzles in T&E(1), the "gB-ratings.txt" file contains the gB ratings; 
* for puzzles in T&E(2), the "BxB-classif.txt" file contains the BxB classifications.
<br><br><br>


## 2. T&E(3) collections
There is currently only one collection of puzzles in T&E(3), namely [mith-TE3].
### 2.1. The mith-158276-TE3 folder
The puzzle collection [mith-TE3] dealt with in this folder consists of 158,276 BRT-expansions of minimal puzzles in T&E(3).

For any details about the exotic patterns (tridagon and Imp630) leading to the classifications in this repository, you need to read the last two chapters (14 and 15) of [UMRN].<br>


#### How to solve puzzles in T&E(3), based on impossible patterns and ORk-relations
The question arose of how to use the impossible pattern(s) to solve such puzzles.<br> 
The guardians of impossible patterns allow to conclude that an ORk relation (i.e. an OR disjunction with k terms) between k candidates must be satisfied. From this, several kinds of ORk-chains can be built on the ORk relation and elimination rules can be defined (see [AUM] or [UMRN]).<br>


#### More impossible patterns
Some time after the discovery of the tridagon pattern, "eleven" found more 3-digit impossible patterns, indeed 630 of them in two bands (or two stacks). They were originally announced here: http://forum.enjoysudoku.com/chromatic-patterns-t39885-71.html. <br>
As I wanted to see if and how such a large number of patterns could be used in practice, I wrote a rule generator that could transform each pattern into a CSP-Rule rule that asserts a corresponding OR-relation.<br>
By analysing how useful such rules were when combined with OR-chains, I found 4 small subsets of patterns that had almost the same resolution power as the full set of 630; they are named Select1, Select2,...<br>


#### What is there in this folder?
All the files mentioned below have 158,276 lines.<br>
The files with names not mentioned in section 1.2 contain the classifications of these puzzles wrt to the corresponding sets of resolution rules:
* "Trid-OR5W-levels.txt" contains  the classifications wrt SFin + W + Trid-OR5W;
* "Trid-OR5gW-levels.txt" contains  the classifications wrt SFin + gW + Trid-OR5gW;
* "Select1-OR5W-levels.txt" contains  the classifications wrt SFin + W + (Trid+Select1)-OR5W;
* "Select2-OR5W-levels.txt" contains  the classifications wrt SFin + W + (Trid+Select2)-OR5W.<br>

Comparison of ratings in the above files can be done within SudoRules, using e.g. one of the functions "compare-levels-in-\<k\>-files" (where \<k\>=2, 3 or 4).<br>
Details about the meaning of all this can be found in the last two chapters of [UMRN].<br>


#### How to use the above classification results to find more interesting examples?
There are many ways you can use the above results to find interesting examples of puzzles in T&E(3) and/or of impossible patterns. The following are just examples (in which you can use SudoRules function "compare-levels-in-\<k\>-files" to find the differences):<br>
* select puzzles solvable using only the most basic T&E(3) pattern, i.e. Tridagons, according to their SFin + W + Trid-OR5W level,
* select puzzles solvable using only Tridagons, but for which ORk-gchains are useful, by choosing those that have a Trid-OR5gW-level lower than their Trid-OR5W-level,
* select puzzles solvable in one of the Select subsets of impossible patterns, but not in the the next smaller one, by comparing their different levels,
* select puzzles requiring very rare impossible patterns by choosing those with their Imp630-OR5W-level lower than their Select2-OR5W-level...<br>


#### 2.1.1 The Sample500 sub-folder
It contains:
- a random sample of 500 puzzles from the full collection of min-expands, 
- the 4844 minimal puzzles that can be generated from  them,
- and elementatry statistics for these minimals.


#### 2.1.2 The Sample1000 sub-folder
It contains:
- a random sample of 1,000 puzzles from the full collection of min-expands, 
- the 2101 minimal puzzles that can be generated from  them,
- and elementatry statistics for these minimals.
<br><br><br>


## 3. Pre-tridagon T&E(2) collections
The two puzzle collections dealt with in this folder consist of puzzles in T&E(2) from the pre-tridagon era, when "hardest" was understood as "with the highest SER". All these puzzles have BxB ≤ 7 (and only 3 have BxB = 7). <br>

### 3.1. The eleven-26370-TE2 folder
It's about  a collection of 26,370 minimal puzzles in T&E(2).
In addition to the usual files, it contains:
* the "sudo-eleven.pdf" file = [eleven 2011a];
* the document [eleven 2011b], in two parts;
* a "degen-cycl-trid-list.clp" file containing the list of puzzles with a degenerate-cyclicl tridagon;
* an "Imp630-list.clp" file containing the list of puzzles with a some Imp630 pattern;
* B2B,..., B6B sub-folders for elementary statistics restricted to the corresponding sub-collections of puzzles; these local results are reported in the global "RESULTS.clp" file of the eleven-26370-TE2 folder;
* a B6B+ folder for the calculations used in section 6.2.1 of [HCCS2];
* a Sample40 folder for the calculations used in section 6.2.2 of [HCCS2];
* a "BxB-PBCS-Table-11-2" folder for the BxB results computed with [SudoRules] for a sublist of 1,278 puzzles were published as Table 11.2 and followig remarks in [PBCS]; they were also used to check that the [SudoRules] and [SHC] results coincided.<br>

The detailed BxB results given here for the full list of puzzles were used in Table 2.2 of [HCCS], an extension of Table 11.2 of [PBCS].
 
### 3.2. The ph2010-3103972-TE2 folder
It's about a collection of 3,103,972 minimal puzzles in T&E(2) (except one in T&E(1) that shouldn't be in the collection).
In addition to the usual files, it contains:
* B2B,..., B7B sub-folders for elementary statistics restricted to the corresponding sub-collections of puzzles; these local results are reported in the global "RESULTS.clp" file of the ph2010-3103972-TE2 folder.

Because they are too large for the GitHub limit (25 MB):
* the "puzzles.txt" file has been split into 20 files (of constant SER) in the PUZZLES sub-directory, in which an "assemble.txt" file makes a Unix script for assembing them, to be run from the PUZZLES sub-directory; (alternatively, it can be loaded from [ph2010];
* the "puzzles-expands.txt" file must be recomputed, with the SHC, if needed;
* the "mdel.txt" file has been split into two parts, "mdel-a.txt" and "mdel-b.txt", to be assembled in this order.
<br><br><br>


## 4. Post-tridagon T&E(2) collections
The three puzzle collections dealt with in this folder consist of puzzles in T&E(2), with large BxB classifications, from the post-tridagon era. <br>
(The Monhard-until-2023-08-15-TE2+3 collection also has T&E(3) puzzles, but they bring no new results with respect to the mith-158276-TE3 collection.)

### 4.1. The Paquita-2023-sept-dec-TE2 folder
In addition to the usual files, there are a "tridagon-list.clp" file and a "degen-cycl-trid-list.clp" file. Load them into SUdoRules to get access to global variables named ?\*tridagon-list\* and ?\*degenerate-cyclic-tridagon-list\*
### 4.2. The Monhard-until-2023-08-15-TE23 folder
In addition to the usual files, there are two sub-folders, 
### 4.3. The Coloin-2024-09-03-B7B+ folder
<br><br><br>


## 5. Collections with extreme numbers of clues
The puzzle collections dealt with in this folder are characterised by having a fixed number of clues, either among the lowest possible or the highest known ones.<br>

### 5.1. the Royle-49158-17c folder
It's about the full [c18] collection of 49,158 minimal puzzles with 17 clues; they are all in T&E(0) or T&E(1). This folder contains only the "standard" files.

### 5.2. the Mat-2000000-18c folder
It's about a collection [c18] of 200,000 minimal puzzles with 19 clues; they are almost all all in T&E(0) or T&E(1) (only 4 in T&E(2)). In addition to the "standard" files, this folder contains:
* a "PUZZLES" sub-folder: because the "puzzles.txt" file would be too large for GitHub, it is  split into 7 files "puzzles-a.txt" ... "puzzles-g.txt" in this sub-folder; if needed, assemble them by running the "assemble.txt" Unix script from the "PUZZLES" folder;
* a "has-degen-cyclic-trid.clp" file, containing a list of the puzzles with a degenerate-cyclic-tridagon, restricted to the first 200,000 puzzles;
* a "highest-SER" sub-folder with the highest SER puzzles among the 2,000,000;
* a "TE2-780-Blue" sub-folder with 780 18-clue puzzles due to Blue, all in T&E(2), with BxB = 1 or 2.<br>
The latter two show that, among 18-clue puzzles, even the highest SER ones don't have BxB larger than 2.


### 5.3. the dob-2014078-38c folder
It's about a collection [c38] of 2,014,078 minimal puzzles with 38 clues; they are all in T&E(1) or T&E(2). In addition to the "standard" files, this folder contains:
* a "PUZZLES" sub-folder: because the "puzzles.txt" file would be too large for GitHub, it is  split into 7 files "puzzles-a.txt" ... "puzzles-g.txt" in this sub-folder; if needed, assemble them by running the "assemble.txt" Unix script from the "PUZZLES" folder;
* a "has-degen-cyclic-trid.clp" file, containing a list of the puzzles with a degenerate-cyclic-tridagon, restricted to the first 200,000 puzzles.


### 5.4. the dob-2650-39c folder
It's about the collection [c39] of the 2,650 currently known minimal puzzles with 39 clues; they are all in T&E(1) or T&E(2). In addition to the "standard" files usefukl for basic statistics, this folder has two files, one for non-degenrate tridagons and one for degenerate-cyclic tridagons.
<br><br><br>


## 6. License
Strictly speaking, there is litle software in this repository.<br>
Puzzles and puzzle collections remain the intellectual property of their creators.<br>
Puzzle solutions and classifications are my intellectual property.<br>
All this means that any mention of the above should be accompanied by the relevant references.
<br><br><br>


## 7. References<br>
The following artciles and books can be downloaded in pdf form from ResearchGate: https://www.researchgate.net/profile/Denis-Berthier/research). Most of them are also present in the "Publications" folder of CSP-Rules. <br>
### Articles<br>
* [Berthier 2008a]: BERTHIER D., From Constraints to Resolution Rules, Part I: Conceptual Framework, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 165-170, Springer, 2010.<br>
* [Berthier 2008b]: BERTHIER D., From Constraints to Resolution Rules, Part II: chains, braids, confluence and T&E, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 171-176, Springer, 2010.<br>
* [Berthier 2009]: BERTHIER D., Unbiased Statistics of a CSP - A Controlled-Bias Generator, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 09), December 4-12, 2009, Springer. Published as a chapter of Innovations in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 11-17, Springer, 2010.<br><br>

### Books <br>
* [AUM]: BERTHIER D., Augmented User Manual for CSP-Rules V2.1, Lulu Press, November 2021.<br>
* [BUM1]: BERTHIER D., Basic User Manual for CSP-Rules V2.1, Lulu Press, August 2020.<br>
* [BUM2]: BERTHIER D., Basic User Manual for CSP-Rules V2.1 (Second Edition), Lulu Press, November 2021.<br>
* [CRT]: BERTHIER D., Constraint Resolution Theories, Lulu Press, October 2011.<br>
* [HCCS1] : BERTHIER D., Hierarchical Classifications in Constraint Satisfaction, First Edition, Lulu Press, October 2023.<br>
* [HCCS2] : BERTHIER D., Hierarchical Classifications in Constraint Satisfaction, Second Edition, Lulu Press, July 2024.<br>
* [HCCS] : any of [HCCS1] or [HCCS2].<br>
* [HLS1]: BERTHIER D., The Hidden Logic of Sudoku, First Edition, Lulu Press, May 2007.<br>
* [HLS2]: BERTHIER D., The Hidden Logic of Sudoku, Second Edition, Lulu Press, November 2007.<br>
* [HLS]: any of [HLS1] or [HLS2]<br>
* [PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles, Lulu Press, July 2012.<br>
* [PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu Press, November 2015.<br>
* [PBCS3]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Third Edition), Lulu Press, November 2021.<br>
* [PBCS]: any of [PBCS1], [PBCS2] or [PBCS3].<br>
* [UMRN]: BERTHIER D., User Manual and Research Notebooks for CSP-Rules, Lulu Press, July 2023.<br>

### Other <br>
* [eleven 2011a]: http://forum.enjoysudoku.com/the-making-of-a-gotchi-a-simple-way-to-find-extreme-sudokus-t30150.html<br>
* [eleven 2011b]: 26,370 T&E(2) puzzles, original broken link: https://sites.google.com/site/sudoeleven/ 08/07/2011<br>

### Puzzle collections <br>

#### Puzzle collections (pre-tridagon)
* [c17]: RILEY Gordon, the full collection of 17-clue puzzles (mainly due to Gordon Riley):
	https://sites.google.com/site/dobrichev/sudoku-puzzle-collections <br>
* [c18]: WHITE Jim (alias “Mathimagics”), 2,000,000 18-clue puzzles: 
https://drive.google.com/file/d/1d8XKhud_8L59Uy3jOjeFQ361eZun7Fms/view <br>
* [c38]: DOBRICHEV Mladen, 2,014,078 38-clue puzzles: 
https://sites.google.com/site/dobrichev/sudoku-puzzle-collections <br>
* [c39]: DOBRICHEV Mladen, 2,650 39-clue puzzles: 
	https://sites.google.com/site/dobrichev/sudoku-puzzle-collections <br>
* [cbg]: BERTHIER Denis,
     https://github.com/denis-berthier/Controlled-bias_Sudoku_generator_and_collection <br>
* [cbg000]: Sudoku-b/cbg-000, first small part of [cbg], with full analyses available here: 
     https://github.com/denis-berthier/CSP-Rules-Examples <br>
* [CSP-Rules-Examples]: BERTHIER Denis,
      https://github.com/denis-berthier/CSP-Rules-Examples <br>
* [eleven 2011a]: “eleven”, http://forum.enjoysudoku.com/the-making-of-a-gotchi-a-simple-way-to-find-extreme-sudokus-t30150.html <br>
* [eleven 2011b]: “eleven”, 26,370 T&E(2) puzzles https://sites.google.com/site/sudoeleven/, 08/07/2011 (original, broken link); now available in [TE2-classif], with eleven’s permission. <br>
* [eleven T11.2]: “eleven”, 1,278 puzzles from [eleven 2011b] used in Table 11.2 of [CRT] or [PBCS]. <br>
* [Magictour-top1465]: http://magictour.free.fr/top1465 <br>
* [ph2010]: PENET  Gérard (alias “champagne”), database of 3,103,972 “potentially hardest” puzzles as of Aug. 2020, in reality database of SER-hardest puzzles, all but 2 at T&E-depth 2, defined here:
   http://forum.enjoysudoku.com/the-hardest-sudokus-new-thread-t6539-726.html
Note that the “2010” in the name has nothing to do with year 2010; it was published on October 14th, 2020. <br> <br>

#### Puzzle collections (post-tridagon)
* [col-TE2]: Colin (alias "coloin")<br>
* [mith-TE3]: NEWMAN Philip, Nov. 2022, several collections of “expanded forms” of puzzles at T&E-depth 3 (but no collection of minimals), defined here:
http://forum.enjoysudoku.com/t-e-3-puzzles-split-from-hardest-sudokus-thread-t40514.html <br>
* [Monh]: MONHARD Hendrik, Aug. 2023, collection of 55,088 minimal puzzles at T&E-depths 2 and 3:
http://forum.enjoysudoku.com/the-hardest-sudokus-new-thread-t6539-1628.html
https://drive.google.com/file/d/1LxrL5R5vmYqj6f7FBEmPL5ot7OZY1pXH/view?usp= drive_link <br>
* [Monh2]: MONHARD Hendrik, May 2024, collection of 478 minimal puzzles at T&E-depth 2 and with BxB≥7:
http://forum.enjoysudoku.com/the-bxb-classification-of-t-e-2-puzzles-t41922-47.html <br>
* [Paq-TE2]: RUESSINK Franciska (alias “Paquita”), collection of 81,139 minimal puzzles at T&E-depth 2:
https://drive.google.com/file/d/1twLA_GsfVh_n-qz7Q39WH7bhmb7eyqE-/view <br>

