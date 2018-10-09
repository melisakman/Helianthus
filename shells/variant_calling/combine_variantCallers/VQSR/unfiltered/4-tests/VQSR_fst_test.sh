#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G4_90/
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_test.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --vcf chr01_final.vcf --weir-fst-pop ../wd_list.txt --weir-fst-pop ../lr_list.txt --fst-window-size 500 --out fst/lr_wd_chr01_10kb_test
