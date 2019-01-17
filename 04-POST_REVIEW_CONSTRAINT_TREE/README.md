# A constrained ML analysis 
Our initial ML analysis of the 259 dataset

```
../01-ALIGNMENTS/Fortunato_259.fasta
```

produced a most-likely tree that had the putative sponge
CDX genes in a clade with the NKL gene Ankx.

```
../02-TREES/259-ml-lg.tre
```

A reviewer of the paper pointed out this was extraordinary
since the ML analysis of this same dataset in Fortunato et al. 2014
produced a tree with a clade that included Cdx and the sponge genes.
The reviewer asked for a detailed explanation of this difference.
If we had access to the raw tree file from the Fortunato et al. 2014
study, we would have simply produced likelihood values for both trees
and reported this, but we did not, so we ran a new analysis that 
generated 10 trees using a constraint that forced Cdx with the sponge
trees. One of the resultant trees had a better likelihood value than
the best unconstrained tree. We report this analysis here.
The following is the command we ran:

```
raxmlHPC-PTHREADS-SSE3 -T 60 -g 259.con -p 1234 -# 10 -s 259.fa -m PROTGAMMALG -n F259_LG.con
```

The output of the analysis is in the file:
```
RAxML_info.F259_LG.con
```

The best tree is in the file:

```
RAxML_bestTree.F259_LG.con
```

The constraint tree is in the file:

```
259.con
```
