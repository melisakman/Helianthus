#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcffst
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_fst_chr4tests.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_fst_chr4tests.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

# vcftools --gzvcf chr01_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr01.bed --out fst/lr_wd_chr01_10kb
# vcftools --gzvcf chr02_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr02.bed --out fst/lr_wd_chr02_10kb
# vcftools --gzvcf chr03_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr03.bed --out fst/lr_wd_chr03_10kb
# vcftools --gzvcf chr04_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr04.bed --out fst/lr_wd_chr04_10kb
# vcftools --gzvcf chr05_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr05.bed --out fst/lr_wd_chr05_10kb
# vcftools --gzvcf chr06_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr06.bed --out fst/lr_wd_chr06_10kb
# vcftools --gzvcf chr07_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr07.bed --out fst/lr_wd_chr07_10kb
# vcftools --gzvcf chr08_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr08.bed --out fst/lr_wd_chr08_10kb
# vcftools --gzvcf chr09_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr09.bed --out fst/lr_wd_chr09_10kb
# vcftools --gzvcf chr10_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr10.bed --out fst/lr_wd_chr10_10kb
# vcftools --gzvcf chr11_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr11.bed --out fst/lr_wd_chr11_10kb
# vcftools --gzvcf chr12_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr12.bed --out fst/lr_wd_chr12_10kb
# vcftools --gzvcf chr13_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr13.bed --out fst/lr_wd_chr13_10kb
# vcftools --gzvcf chr14_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr14.bed --out fst/lr_wd_chr14_10kb
# vcftools --gzvcf chr15_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr15.bed --out fst/lr_wd_chr15_10kb
# vcftools --gzvcf chr16_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr16.bed --out fst/lr_wd_chr16_10kb
# vcftools --gzvcf chr17_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --exclude-bed Repeats_chr17.bed --out fst/lr_wd_chr17_10kb

vcftools --gzvcf chr04_final.vcf.gz --weir-fst-pop wd_list_noNM.txt --weir-fst-pop lr_list_noHopi.txt --fst-window-size 10000 --out fst/lr_wd_chr04_10kb_noHopinoNM
vcftools --gzvcf chr04_final.vcf.gz --weir-fst-pop wd_list_noNM.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr04_10kb_noNM
