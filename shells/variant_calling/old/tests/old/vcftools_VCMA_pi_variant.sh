#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfpi
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi_window_variantOnly.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi_window_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --gzvcf VCMA_variantOnly_allchr.vcf.gz --keep wd_list.txt --window-pi 10000 --out pi/wd_pi_chr01_variantOnly_10kb
vcftools --gzvcf VCMA_variantOnly_allchr.vcf.gz --keep lr_list.txt --window-pi 10000 --out pi/lr_pi_chr01_variantOnly_10kb
