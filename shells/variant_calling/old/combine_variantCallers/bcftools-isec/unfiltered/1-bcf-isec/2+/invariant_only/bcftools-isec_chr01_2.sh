#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_invariantSitesOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_invariantSitesOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6


# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/samtools_invariant_chr01_Filtered_invariantSitesOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/freebayes_invariant_chr01_allFiltered_onlyInvariantSites.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix fastq/invariants/VCMA_GATK_chr01_secondFilter_onlyInvariantSites.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/invariantSitesOnly/chr01_2 fastq/invariants/VCMA_GATK_chr01_secondFilter_onlyInvariantSites.vcf.gz \
samtools_VC/samtools_invariant_chr01_Filtered_invariantSitesOnly.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr01_allFiltered_onlyInvariantSites.vcf.gz






