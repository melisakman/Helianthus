#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr17
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr17_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr17_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6


bcftools isec -n=3 -O z -p vcf-isec_chr17_3 fastq/invariants/filtered_combined/VCMA_GATK_chr17_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr17_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr17_Filtered_sorted.vcf.gz

