# 2018-Pastrana_etal_SpongeParaHoxAnalyses
files related to testing for existance of sponge ParaHox genes

## 01-ALIGNMENTS
All alignments used in the study

## 02-TREES
All trees produced in the study

## 03-COMMANDS
All commands used in the study

## 00-PhylogeneticsProtocol_v1.0.pdf
This document serves as an a priori established protocol ([phylotocol](https://github.com/josephryan/phylotocol)) laying out our planned phylogenetic experiments to test whether the *Sycon ciliatum* and *Leucosolenia complicata* homeobox genes reported to be Cdx orthologs are truly *bona fide* orthologs of Cdx (or any other Hox/ParaHox gene). NOTE: ammendments to this protocol will be included as appendices in a new version of this document.

## 00-PhylogeneticsProtocol_v1.1.pdf
Explicitly mention analyses of both matrices from Fortunato et al. (2014). Removed plan to run GAMMA on NJ analyses—is not standard practice and was not performed in Fortunato et al. (2014). Changed version of phyml—was not able to find version used in Fortunato et al. (2014). Added hypothesis testing for the extended dataset from Fortunato et al. (2014).

## 00-PhylogeneticsProtocol_v1.2.pdf
Removed homeodomains with 10 or more gaps from our custom dataset. After reading results of Zhou et al. (2017), we have chosen to run 5 starting parsimony trees and 5 random starting trees for all RAxML trees.

## 00-PhylogeneticsProtocol_v1.3.pdf
Edited commands for MrBayes so that instead of running a set number of generations, replicate mcmc runs will continue until the average standard deviation of split frequencies equals 0.01

## 00-PhylogeneticsProtocol_v1.4.pdf
After realizing MrBayes would stop at the default 1,000,000 generations even if stopval criteria had not been reached, we edited commands for MrBayes to include 10 million generations, sampling every 10,000 while still maintaining the stopval = 0.01 command.

## 00-PhylogeneticsProtocol_v1.5.pdf
Typo fixed for MrBayes commands. Relbrunin to Relburnin. Due to time constraints, we ran MrBayes v3.2.6 instead of v3.1.2 for repeating the original Fortunato Bayes analyes. We added NINJA neighbor joining analyses on custom dataset because Phylip NJ results had a strange (likely erroneous) long branch (this branch disappeared in Ninja— all trees will be incorporated in supplemental materials).

## 00-PhylogeneticsProtocol_v1.6.pdf
Added 3 hypotheses tests (5c, 5f, and 5i). Realized that existing tests do not test whether SciCdx and form a clade with all hox and parahox genes.

