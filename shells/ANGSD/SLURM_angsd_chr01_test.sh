#!/bin/bash
#SBATCH --job-name=ANGSD
#SBATCH --account=co_rosalind
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ANGSD/
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/ANGSD_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/ANGSD_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037


angsd -bam /clusterfs/rosalind/users/makman/GATK/bams/bams.txt \
-GL 1 \
-r HanXRQChr01 \
-doGlf 2 \
-out /clusterfs/rosalind/users/makman/GATK/ANGSD/chr01_ANGSD \
-nThreads 20 \
-doMajorMinor 1 \
-SNP_pval 1e-6 \
-doMaf 1 \
-doGeno 32 \
-doPost 1 \
-minMapQ 30 \
-minQ 20 \
-minInd 1 \
-doDepth 1 \
-doCounts 1 \
-dumpCounts 2 \
-geno_minDepth 1 \
-geno_maxDepth 100 \
-postCutoff 0.6 \
-doIBS 2 \
-doCov 1 \
-doPlink 2 \
-doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 \
-minMaf 0.01
