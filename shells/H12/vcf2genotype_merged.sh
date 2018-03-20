#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J vcf2genotype
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=8000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_merged_filtered.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_merged_filtered.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr01 --recode --stdout > merged_NVC_filtered_dups_removed_chr01.vcf

# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr01.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr01_G12_input.txt


# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr02 --out merged_NVC_filtered_dups_removed_chr02.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr03 --out merged_NVC_filtered_dups_removed_chr03.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr04 --out merged_NVC_filtered_dups_removed_chr04.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr05 --out merged_NVC_filtered_dups_removed_chr05.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr06 --out merged_NVC_filtered_dups_removed_chr06.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr07 --out merged_NVC_filtered_dups_removed_chr07.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr08 --out merged_NVC_filtered_dups_removed_chr08.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr09 --out merged_NVC_filtered_dups_removed_chr09.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr10 --out merged_NVC_filtered_dups_removed_chr10.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr11 --out merged_NVC_filtered_dups_removed_chr11.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr12 --out merged_NVC_filtered_dups_removed_chr12.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr13 --out merged_NVC_filtered_dups_removed_chr13.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr14 --out merged_NVC_filtered_dups_removed_chr14.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr15 --out merged_NVC_filtered_dups_removed_chr15.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr16 --out merged_NVC_filtered_dups_removed_chr16.vcf
# vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr17 --out merged_NVC_filtered_dups_removed_chr17.vcf
# 
# 
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr02.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr02_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr03.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr03_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr04.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr04_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr05.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr05_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr06.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr06_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr07.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr07_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr08.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr08_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr09.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr09_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr10.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr10_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr11.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr11_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr12.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr12_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr13.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr13_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr14.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr14_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr15.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr15_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr16.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr16_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr17.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr17_G12_input.txt
