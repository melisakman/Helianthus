#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G6_90
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_tajD.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_tajD.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15

vcftools --vcf chr01_final.vcf --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr01_10kb
vcftools --gzvcf chr02_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr02_10kb
vcftools --gzvcf chr03_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr03_10kb
vcftools --gzvcf chr04_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr04_10kb
vcftools --gzvcf chr05_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr05_10kb
vcftools --gzvcf chr06_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr06_10kb
vcftools --gzvcf chr07_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr07_10kb
vcftools --gzvcf chr08_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr08_10kb
vcftools --gzvcf chr09_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr09_10kb
vcftools --gzvcf chr10_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr10_10kb
vcftools --gzvcf chr11_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr11_10kb
vcftools --gzvcf chr12_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr12_10kb
vcftools --gzvcf chr13_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr13_10kb
vcftools --gzvcf chr14_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr14_10kb
vcftools --gzvcf chr15_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr15_10kb
vcftools --gzvcf chr16_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr16_10kb
vcftools --gzvcf chr17_final.vcf.gz --keep ../lr_list.txt --TajimaD 10000 --out tajD/lr_TajD_chr17_10kb
