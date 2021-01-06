#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr11
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr11stringentVSnon.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr11stringentVSnon.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6


# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/filtered_combined/VCMA_GATK_chr11_nonstringentFilter.vcf.gz

# bcftools isec -n +2 -O z -p vcf-isec_chr11_strvsnon fastq/invariants/filtered_combined/VCMA_GATK_chr11_nonstringentFilter.vcf.gz \
# fastq/invariants/filtered_combined/VCMA_GATK_chr11_secondFilter.vcf.gz 

zcat fastq/invariants/filtered_combined/VCMA_GATK_chr11_nonstringentFilter.vcf.gz | wc -l
zcat fastq/invariants/filtered_combined/VCMA_GATK_chr11_secondFilter.vcf.gz | wc -l
zcat fastq/invariants/filtered_combined/VCMA_GATK_chr11_sorted.vcf.gz | wc -l