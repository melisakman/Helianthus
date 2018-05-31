#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J vcfisec1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

gunzip fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf.gz
gunzip freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf
# gunzip samtools_VC/samtools_invariant_chr01_Filtered.vcf.gz
# 
# bcftools isec -n 2+ -O z fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted_filtered.vcf \
# freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf \
# samtools_VC/samtools_invariant_chr01_Filtered.vcf > GATK_FB_ST_2plus_intersect_chr01.vcf