#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J isecchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr01_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr01_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6


bcftools isec -n=3 -O z -p vcf-isec_chr01_3 fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

