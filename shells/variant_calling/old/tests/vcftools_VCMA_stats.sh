#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/stats
#SBATCH -J stats
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0

# bcftools stats ../freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf > freebayes_newFiltering.vchk
# plot-vcfstats freebayes_newFiltering.vchk -p plot_freebayes_newFiltering
# 
# bcftools stats ../samtools_VC/samtools_invariant_chr01_Filtered.vcf > samtools_newFiltering.vchk
# plot-vcfstats samtools_newFiltering.vchk -p plot_samtools_newFiltering
# 
# bcftools stats ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf > GATK_secondFiltering.vchk
# plot-vcfstats GATK_secondFiltering.vchk -p plot_GATK_secondFiltering
# 
# bcftools stats ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf > GATK_hardFiltering.vchk
# plot-vcfstats GATK_hardFiltering.vchk -p plot_GATK_hardFiltering
# 
# bcftools stats ../freebayes/final_combined/freebayes_invariant_chr01_allFiltered_snpnoqual.vcf > freebayes_newFiltering_snpNoqual.vchk
# plot-vcfstats freebayes_newFiltering_snpNoqual.vchk -p plot_freebayes_newFiltering_snpNoqual

# bcftools stats ../freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz > freebayes_raw.vchk
# plot-vcfstats freebayes_raw.vchk -p plot_freebayes_raw
# 
# bcftools stats ../samtools_VC/old/samtools_invariant_chr01_combined.vcf  > samtools_raw.vchk
# plot-vcfstats samtools_raw.vchk -p plot_samtools_raw
# 
# bcftools stats ../fastq/invariants/VCMA_chr01.vcf  > GATK_raw.vchk
# plot-vcfstats GATK_raw.vchk -p plot_GATK_raw

bcftools stats ../samtools_VC/samtools_invariant_chr01_Filtered_dupsRemoved.vcf > samtools_invariant_chr01_Filtered_dupsRemoved.vchk
plot-vcfstats samtools_invariant_chr01_Filtered_dupsRemoved.vchk -p plot_samtools_filtered_dupsRemoved

