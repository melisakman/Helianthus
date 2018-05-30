#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J sort10
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr10.out
#SBATCH -e /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

vcf-concat VCMA_chr10_NO_VARIATION_hardfiltered.vcf.gz VCMA_chr10_SNP_hardfiltered.vcf.gz VCMA_chr10_indel_hardfiltered.vcf.gz > VCMA_GATK_chr10_unsorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VCMA_GATK_chr10_unsorted.vcf > filtered_combined/VCMA_GATK_chr10_sorted.vcf
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c filtered_combined/VCMA_GATK_chr10_sorted.vcf > filtered_combined/VCMA_GATK_chr10_sorted.vcf.gz 
