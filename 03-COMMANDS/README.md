## Commands used in Pastrana et al. 2018

1. Neighbor joining

   #&#xfeff;1 copy an alignment to the current working directory 
   #&#xfeff;1 convert alignment to phylip and rename to "infile"
   ```protdist```
   ```P <enter> to change model (used JTT, PMB, PAM, and kimura)
   Y
   ```
   ```mv outfile infile```
   ```neighbor```
   ```Y```
   #&#xfeff;1 rename outtree and outfile according to alignment and model
   #&#xfeff;1 for example for the JTT analysis of the Fortunato_150.fasta alignment
   ```mv outtree 150-nj-jtt.tre```
   ```$ mv outfile 150-nj-jtt.outfile```

2. Maximum likelihood 

   #&#xfeff;1 run LG, WAG, JTT 
   #&#xfeff;1 run with 5 parsimony starting trees and 100 bootstraps
   ```raxmlHPC-SSE3 -f a -p 1021 -# 5 -m PROTGAMMA[MODEL] -s [ALIGNMENT] -x 5640 -N 100 -n [NAME].mp```
   #&#xfeff;1 run with 5 random starting trees and 100 bootstraps
   ```raxmlHPC-SSE3 -f a -d -p 1021 -# 5 -m PROTGAMMA[MODEL] -s [ALIGNMENT] -x 5640 -N 100 -n [NAME].rt```
   #&#xfeff;1 To identify the best tree compare the likelihood values between 
   #&#xfeff;1 the parsimony and random starting tree runs
   ```grep 'Starting final GAMMA-based' *info*```

3. Bayesian 

   #&#xfeff;1 run LG, WAG, JTT, 
   #&#xfeff;1 convert alignment to Nexus format
   #&#xfeff;1 add the following Bayes block (substitute MODEL with LG, WAG, or JTT)
```BEGIN MRBAYES;
prset aamodelpr=fixed(MODEL); lset rates = gamma; 
mcmcp ngen = 10000000 samplefreq = 10000 mcmcdiagn = yes 
stoprule = yes stopval = 0.01 nruns = 2 nchains = 5 savebrlens = yes;
mcmc;
sumt filename = FILENAME.nex nRuns = 2 Relbrunin = YES 
    BurninFrac = 0.25 Contype = Allcompat;
END;``` 

   #&#xfeff;1 run mixed model
   #&#xfeff;1 convert alignment to Nexus format
   #&#xfeff;1 add the following Bayes block (substitute MODEL with LG, WAG, or JTT)
```BEGIN MRBAYES;
prset aamodelpr=mixed; lset rates = gamma; 
mcmcp ngen = 10000000 samplefreq = 10000 mcmcdiagn = yes 
stoprule = yes stopval = 0.01 nruns = 2 nchains = 5 savebrlens = yes;
mcmc;
sumt filename = FILENAME.nex nRuns = 2 Relbrunin = YES 
    BurninFrac = 0.25 Contype = Allcompat;
END;``` 


4. SOWH tests

```sowhat --constraint=CONSTRAINT_FILE --aln=ALIGNMENT_FILE] --raxml_model=PROTGAMMAJTT --dir=[FULL_PATH_TO_OUTDIR] --name=[NAME] --rax='/usr/local/bin/raxmlHPC-PTHREADS -T 46'```
  #&#xfeff;1 constraint files are in the 01-CONSTRAINTS directory

5. AU tests

  #&#xfeff;1 run a constrained ML analysis
  ```raxmlHPC -g [CONSTRAINT_FILE] -p 1021 -# 10 -s [ALIGNMENT] -m PROTGAMMALG -n [NAME]```
  #&#xfeff;1 copy tree above & best LG tree to a file called "competing trees"
  ```raxmlHPC -f g -m PROTGAMMALG -z competing_trees -s [ALIGNMENT] -n [NAME]

seqmt --puzzle RAxML_perSiteLLs.2trees
makermt RAxML_perSiteLLs;
consel RAxML_perSiteLLs;
catpv RAxML_perSiteLLs
catpv RAxML_perSiteLLs > au.txt```


