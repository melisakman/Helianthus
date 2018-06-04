#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfpi
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --gzvcf vcf-isec_chr01/chr01_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr01_10kb
vcftools --gzvcf vcf-isec_chr02/chr02_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr02_10kb
vcftools --gzvcf vcf-isec_chr03/chr03_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr03_10kb
vcftools --gzvcf vcf-isec_chr04/chr04_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr04_10kb
vcftools --gzvcf vcf-isec_chr05/chr05_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr05_10kb
vcftools --gzvcf vcf-isec_chr06/chr06_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr06_10kb
vcftools --gzvcf vcf-isec_chr07/chr07_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr07_10kb
vcftools --gzvcf vcf-isec_chr08/chr08_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr08_10kb
vcftools --gzvcf vcf-isec_chr09/chr09_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr09_10kb
vcftools --gzvcf vcf-isec_chr10/chr10_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr10_10kb
vcftools --gzvcf vcf-isec_chr11/chr11_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr11_10kb
vcftools --gzvcf vcf-isec_chr12/chr12_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr12_10kb
vcftools --gzvcf vcf-isec_chr13/chr13_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr13_10kb
vcftools --gzvcf vcf-isec_chr14/chr14_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr14_10kb
vcftools --gzvcf vcf-isec_chr15/chr15_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr15_10kb
vcftools --gzvcf vcf-isec_chr16/chr16_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr16_10kb
vcftools --gzvcf vcf-isec_chr17/chr17_intersect.vcf.gz --keep wd_list.txt --site-pi --out pi/wd_pi_chr17_10kb
vcftools --gzvcf vcf-isec_chr01/chr01_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr01_10kb
vcftools --gzvcf vcf-isec_chr02/chr02_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr02_10kb
vcftools --gzvcf vcf-isec_chr03/chr03_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr03_10kb
vcftools --gzvcf vcf-isec_chr04/chr04_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr04_10kb
vcftools --gzvcf vcf-isec_chr05/chr05_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr05_10kb
vcftools --gzvcf vcf-isec_chr06/chr06_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr06_10kb
vcftools --gzvcf vcf-isec_chr07/chr07_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr07_10kb
vcftools --gzvcf vcf-isec_chr08/chr08_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr08_10kb
vcftools --gzvcf vcf-isec_chr09/chr09_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr09_10kb
vcftools --gzvcf vcf-isec_chr10/chr10_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr10_10kb
vcftools --gzvcf vcf-isec_chr11/chr11_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr11_10kb
vcftools --gzvcf vcf-isec_chr12/chr12_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr12_10kb
vcftools --gzvcf vcf-isec_chr13/chr13_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr13_10kb
vcftools --gzvcf vcf-isec_chr14/chr14_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr14_10kb
vcftools --gzvcf vcf-isec_chr15/chr15_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr15_10kb
vcftools --gzvcf vcf-isec_chr16/chr16_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr16_10kb
vcftools --gzvcf vcf-isec_chr17/chr17_intersect.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr17_10kb
