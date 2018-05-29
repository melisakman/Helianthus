#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/
#SBATCH -J stats
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/stats1.out
#SBATCH -e /global/home/users/makman/GATK/outs/stats1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

bcftools stats freebayes_invariant_chr01_allFiltered.vcf.gz > chr01stats.vchk
plot-vcfstats chr01stats.vchk -p plots/

bcftools stats freebayes_invariant_chr02_allFiltered.vcf.gz > chr02stats.vchk
plot-vcfstats chr02stats.vchk -p plots/

bcftools stats freebayes_invariant_chr03_allFiltered.vcf.gz > chr03stats.vchk
plot-vcfstats chr03stats.vchk -p plots/

