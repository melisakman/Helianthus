#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr01_1+.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr01_1+.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
matplotlib/2.1.0



# bcftools isec -n +1 -O z -p vcf-isec_chr01_1 fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf.gz \
# freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz \
# /clusterfs/rosalind/users/makman/GATK/samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

bcftools stats fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf.gz > bcftools_isec/secondFilter/stats/VCMA_GATK_chr01_secondFilter.vchk
bcftools stats freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz > bcftools_isec/secondFilter/stats/freebayes_invariant_chr01_allFiltered.vchk
bcftools stats samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz > bcftools_isec/secondFilter/stats/samtools_invariant_chr01_Filtered_sorted.vchk

plot-vcfstats bcftools_isec/secondFilter/stats/VCMA_GATK_chr01_secondFilter.vchk -p plot_VCMA_GATK_chr01
plot-vcfstats bcftools_isec/secondFilter/stats/freebayes_invariant_chr01_allFiltered.vchk -p plot_freebayes_invariant_chr01
plot-vcfstats bcftools_isec/secondFilter/stats/samtools_invariant_chr01_Filtered_sorted.vchk -p plot_samtools_invariant_chr01