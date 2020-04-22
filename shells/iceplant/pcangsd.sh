#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/analyses/
#SBATCH -J pcangsd
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=28
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/iceplant_angsd.out
#SBATCH -e /global/home/users/makman/paloemix_outs/iceplant_angsd.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


/global/home/users/makman/angsd/angsd -bam 11good_samples_list.txt -out 11good_samples -nThreads 28 \
-GL 1 -doGlf 2 \
-doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -minMaf 0.05 \
-minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 32 -geno_minDepth -1 -postCutoff 0.95 -doPost 1
