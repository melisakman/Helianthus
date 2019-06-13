#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcffst
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_fst.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_fst.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

# vcftools --gzvcf chr01_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr01_10kb
vcftools --gzvcf chr02_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr02_10kb
# vcftools --gzvcf chr03_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr03_10kb
# vcftools --gzvcf chr04_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr04_10kb
# vcftools --gzvcf chr05_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr05_10kb
# vcftools --gzvcf chr06_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr06_10kb
vcftools --gzvcf chr07_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr07_10kb
vcftools --gzvcf chr08_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr08_10kb
vcftools --gzvcf chr09_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr09_10kb
vcftools --gzvcf chr10_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr10_10kb
vcftools --gzvcf chr11_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr11_10kb
vcftools --gzvcf chr12_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr12_10kb
vcftools --gzvcf chr13_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr13_10kb
vcftools --gzvcf chr14_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr14_10kb
vcftools --gzvcf chr15_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr15_10kb
vcftools --gzvcf chr16_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr16_10kb
# vcftools --gzvcf chr17_final.vcf.gz --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out fst/lr_wd_chr17_10kb
# 








