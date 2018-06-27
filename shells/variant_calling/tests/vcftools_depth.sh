#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/stats
#SBATCH -J stats
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_depth_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_depth_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools

vcftools --gzvcf ../freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz --depth --site-depth --site-mean-depth 

vcftools --vcf ../samtools_VC/old/samtools_invariant_chr01_combined.vcf --depth --site-depth --site-mean-depth

vcftools --vcf ../fastq/invariants/VCMA_chr01.vcf --depth --site-depth --site-mean-depth