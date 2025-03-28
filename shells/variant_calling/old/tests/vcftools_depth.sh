#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/stats
#SBATCH -J depth
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_depth_stats2.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_depth_stats2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools

vcftools --gzvcf ../freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz --depth --out freebayes_invariant_chr01_all
vcftools --gzvcf ../freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz --site-depth --out freebayes_invariant_chr01_all
vcftools --gzvcf ../freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz --site-mean-depth --out freebayes_invariant_chr01_all

vcftools --vcf ../samtools_VC/old/samtools_invariant_chr01_combined.vcf --depth --out samtools_invariant_chr01_combined
vcftools --vcf ../samtools_VC/old/samtools_invariant_chr01_combined.vcf --site-depth --out samtools_invariant_chr01_combined
vcftools --vcf ../samtools_VC/old/samtools_invariant_chr01_combined.vcf --site-mean-depth --out samtools_invariant_chr01_combined

# vcftools --vcf ../fastq/invariants/VCMA_chr01.vcf --depth
# vcftools --vcf ../fastq/invariants/VCMA_chr01.vcf --site-depth
# vcftools --vcf ../fastq/invariants/VCMA_chr01.vcf --site-mean-depth