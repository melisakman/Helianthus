#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfpi
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_pi_lr.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_pi_lr.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --gzvcf chr01_final.vcf.gz --keep lr_list.txt --site-pi --out pi/lr_pi_chr01_10kb_test


# vcftools --gzvcf chr01_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr01.bed --out pi/wd_pi_chr01_10kb
# vcftools --gzvcf chr02_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr02.bed --out pi/wd_pi_chr02_10kb
# vcftools --gzvcf chr03_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr03.bed --out pi/wd_pi_chr03_10kb
# vcftools --gzvcf chr04_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr04.bed --out pi/wd_pi_chr04_10kb
# vcftools --gzvcf chr05_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr05.bed --out pi/wd_pi_chr05_10kb
# vcftools --gzvcf chr06_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr06.bed --out pi/wd_pi_chr06_10kb
# vcftools --gzvcf chr07_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr07.bed --out pi/wd_pi_chr07_10kb
# vcftools --gzvcf chr08_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr08.bed --out pi/wd_pi_chr08_10kb
# vcftools --gzvcf chr09_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr09.bed --out pi/wd_pi_chr09_10kb
# vcftools --gzvcf chr10_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr10.bed --out pi/wd_pi_chr10_10kb
# vcftools --gzvcf chr11_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr11.bed --out pi/wd_pi_chr11_10kb
# vcftools --gzvcf chr12_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr12.bed --out pi/wd_pi_chr12_10kb
# vcftools --gzvcf chr13_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr13.bed --out pi/wd_pi_chr13_10kb
# vcftools --gzvcf chr14_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr14.bed --out pi/wd_pi_chr14_10kb
# vcftools --gzvcf chr15_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr15.bed --out pi/wd_pi_chr15_10kb
# vcftools --gzvcf chr16_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr16.bed --out pi/wd_pi_chr16_10kb
# vcftools --gzvcf chr17_final.vcf.gz --keep wd_list.txt --site-pi --exclude-bed Repeats_chr17.bed --out pi/wd_pi_chr17_10kb
vcftools --gzvcf chr01_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr01.bed --out pi/lr_pi_chr01_10kb_TEexcluded_test
# vcftools --gzvcf chr02_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr02.bed --out pi/lr_pi_chr02_10kb
# vcftools --gzvcf chr03_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr03.bed --out pi/lr_pi_chr03_10kb
# vcftools --gzvcf chr04_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr04.bed --out pi/lr_pi_chr04_10kb
# vcftools --gzvcf chr05_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr05.bed --out pi/lr_pi_chr05_10kb
# vcftools --gzvcf chr06_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr06.bed --out pi/lr_pi_chr06_10kb
# vcftools --gzvcf chr07_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr07.bed --out pi/lr_pi_chr07_10kb
# vcftools --gzvcf chr08_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr08.bed --out pi/lr_pi_chr08_10kb
# vcftools --gzvcf chr09_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr09.bed --out pi/lr_pi_chr09_10kb
# vcftools --gzvcf chr10_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr10.bed --out pi/lr_pi_chr10_10kb
# vcftools --gzvcf chr11_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr11.bed --out pi/lr_pi_chr11_10kb
# vcftools --gzvcf chr12_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr12.bed --out pi/lr_pi_chr12_10kb
# vcftools --gzvcf chr13_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr13.bed --out pi/lr_pi_chr13_10kb
# vcftools --gzvcf chr14_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr14.bed --out pi/lr_pi_chr14_10kb
# vcftools --gzvcf chr15_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr15.bed --out pi/lr_pi_chr15_10kb
# vcftools --gzvcf chr16_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr16.bed --out pi/lr_pi_chr16_10kb
# vcftools --gzvcf chr17_final.vcf.gz --keep lr_list.txt --site-pi --exclude-bed Repeats_chr17.bed --out pi/lr_pi_chr17_10kb
