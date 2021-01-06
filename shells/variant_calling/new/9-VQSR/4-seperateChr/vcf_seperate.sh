#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J seperate
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VQSR_seperate.out
#SBATCH -e /global/home/users/makman/GATK/outs/VQSR_seperate.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c allChr_2plus_annot_G8_VQSR99.vcf > allChr_2plus_annot_G8_VQSR99.vcf.gz
# rm allChr_2plus_annot_G8_VQSR99.vcf.gz.tbi
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix allChr_2plus_annot_G8_VQSR99.vcf.gz

# bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr01 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr01_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr02 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr02_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr03 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr03_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr04 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr04_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr05 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr05_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr06 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr06_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr07 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr07_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr08 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr08_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr09 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr09_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr10 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr10_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr11 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr11_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr12 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr12_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr13 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr13_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr14 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr14_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr15 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr15_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr16 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr16_2plus_annot_G8_VQSR99.vcf.gz
bcftools view allChr_2plus_annot_G8_VQSR99.vcf.gz -r HanXRQChr17 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr17_2plus_annot_G8_VQSR99.vcf.gz
