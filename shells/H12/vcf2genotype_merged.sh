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

vcftools --vcf merged_NVC_filtered_dups_removed.vcf --chr HanXRQChr01 --out merged_NVC_filtered_dups_removed_chr01.vcf

python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py merged_NVC_filtered_dups_removed_chr01.vcf /clusterfs/rosalind/users/makman/G12/lr_cv_G12_merged_filtered_samples.txt /clusterfs/rosalind/users/makman/G12/merged_NVC_filtered_dups_removed_chr01_G12_input.txt
