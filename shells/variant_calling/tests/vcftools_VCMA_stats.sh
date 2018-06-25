#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/stats
#SBATCH -J stats
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=16000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
matplotlib/2.1.0

bcftools stats ../freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf > freebayes_newFiltering.vchk
plot-vcfstats freebayes_newFiltering.vchk -p plot_freebayes_newFiltering

bcftools stats ../samtools_VC/samtools_invariant_chr01_Filtered.vcf > samtools_newFiltering.vchk
plot-vcfstats samtools_newFiltering.vchk -p plot_samtools_newFiltering

bcftools stats ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf > GATK_secondFiltering.vchk
plot-vcfstats GATK_secondFiltering.vchk -p plot_GATK_secondFiltering

bcftools stats ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf > GATK_hardFiltering.vchk
plot-vcfstats GATK_hardFiltering.vchk -p plot_GATK_hardFiltering
