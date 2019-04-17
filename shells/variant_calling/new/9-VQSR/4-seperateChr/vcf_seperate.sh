#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J seperate
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VQSR_seperate.out
#SBATCH -e /global/home/users/makman/GATK/outs/VQSR_seperate.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6

bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr01_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr01 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr02_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr02 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr03_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr03 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr04_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr04 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr05_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr05 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr06_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr06 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr07_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr07 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr08_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr08 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr09_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr09 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr10_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr10 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr11_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr11 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr12_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr12 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr13_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr13 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr14_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr14 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr15_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr15 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr16_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr16 
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -o chr17_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr17 
