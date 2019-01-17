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
Since we did not have access to the raw tree file from the 
Fortunato et al. 2014 study, and therefore were unable to produce likelihood
value of that tree,  we genereated 10 trees in RAxML using a constraint 
that forced Cdx with the sponge putative Cdx genes. 
The best likelihood score for these constraint trees was `-14657.885041`
which was suboptimal to the best unconstrained tree `-14643.142392`
that led to a clade of the putitive sponge Cdx genes in a clade with the
NKL gene Ankl.

We had originally run a phyml tree on this dataset, but did not report
the result as the likelihood score `-14673.914386` of the phyml tree 
was suboptimal to the RAxML tree that we reported. This phyml tree
recovered putitive sponge Cdx genes in a clade with the NKL gene Ankl.

## Details of the phyml tree
The following is the command we ran:
NOTE: `Fortunato_259.phy` is the phylip-formatted version of
`../01-ALIGNMENTS/Fortunato_259.fasta`

```
phyml -i Fortunato_259.phy -d aa -b 100 -m LG -c 4 -a e
```

The output of the analysis is in the file:

```
phyml259.out
```

The best tree is in the file:
```
Fortunato_259.phy_phyml_tree.txt
```

## Details of our constraint analysis
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
