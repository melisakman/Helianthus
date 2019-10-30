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





vcftools --vcf chr01_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr01.bed --out pi/lr_pi_chr01_10kb_TEexcluded
vcftools --vcf chr02_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr02.bed --out pi/lr_pi_chr02_10kb_TEexcluded
vcftools --vcf chr03_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr03.bed --out pi/lr_pi_chr03_10kb_TEexcluded
vcftools --vcf chr04_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr04.bed --out pi/lr_pi_chr04_10kb_TEexcluded
vcftools --vcf chr05_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr05.bed --out pi/lr_pi_chr05_10kb_TEexcluded
vcftools --vcf chr06_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr06.bed --out pi/lr_pi_chr06_10kb_TEexcluded
vcftools --vcf chr07_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr07.bed --out pi/lr_pi_chr07_10kb_TEexcluded
vcftools --vcf chr08_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr08.bed --out pi/lr_pi_chr08_10kb_TEexcluded
vcftools --vcf chr09_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr09.bed --out pi/lr_pi_chr09_10kb_TEexcluded
vcftools --vcf chr10_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr10.bed --out pi/lr_pi_chr10_10kb_TEexcluded
vcftools --vcf chr11_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr11.bed --out pi/lr_pi_chr11_10kb_TEexcluded
vcftools --vcf chr12_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr12.bed --out pi/lr_pi_chr12_10kb_TEexcluded
vcftools --vcf chr13_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr13.bed --out pi/lr_pi_chr13_10kb_TEexcluded
vcftools --vcf chr14_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr14.bed --out pi/lr_pi_chr14_10kb_TEexcluded
vcftools --vcf chr15_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr15.bed --out pi/lr_pi_chr15_10kb_TEexcluded
vcftools --vcf chr16_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr16.bed --out pi/lr_pi_chr16_10kb_TEexcluded
vcftools --vcf chr17_final.vcf --keep lr_list.txt --window-pi 10000 --exclude-bed Repeats_chr17.bed --out pi/lr_pi_chr17_10kb_TEexcluded
