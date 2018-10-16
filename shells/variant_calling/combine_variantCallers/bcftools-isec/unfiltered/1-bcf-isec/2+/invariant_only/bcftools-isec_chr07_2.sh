#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2chr07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr07_invariantSitesOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr07_invariantSitesOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/samtools_invariant_chr07_Filtered_invariantSitesOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/freebayes_invariant_chr07_allFiltered_onlyInvariantSites.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyInvariantSites.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/invariantSitesOnly/chr07_2 fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyInvariantSites.vcf.gz \
samtools_VC/samtools_invariant_chr07_Filtered_invariantSitesOnly.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr07_allFiltered_onlyInvariantSites.vcf.gz
