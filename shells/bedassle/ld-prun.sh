#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis
#SBATCH -J filtvcf
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/AT_ldprun.out
#SBATCH -e /global/home/users/makman/Arabidopsis/AT_ldprun.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --gzvcf testy_recode_snpid_fixed.vcf --geno-r2 --ld-window-bp 10000 --out testy_recode_snpid_fixed_ldprunned_10K