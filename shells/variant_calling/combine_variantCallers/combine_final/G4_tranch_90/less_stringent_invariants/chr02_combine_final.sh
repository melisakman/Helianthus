#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr02_lessStringentInvariants.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr02_lessStringentInvariants.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


# bcftools filter -r HanXRQChr02 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR90_G4.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr02.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_unfiltered_2plus_GATK_invariantSitesOnly.vcf > chr02_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz
# zcat chr02_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz | bcftools filter -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr02_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
# gunzip /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr02_allFiltered_onlyInvariantSites.vcf.gz
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr02_allFiltered_onlyInvariantSites.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr02_2/sites.txt /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr02_bcftools_sites.vcf chr02 
# 
# rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr02_allFiltered_onlyInvariantSites.vcf
# 


# export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix VQSRfiltered_90_G4_SNP_chr02.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix chr02_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../../fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyIndelSites.vcf.gz

bcftools view VQSRfiltered_90_G4_SNP_chr02.vcf.gz -G Hopi | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr02_noHopi.vcf.gz
bcftools view chr02_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz -G Hopi | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr02_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_noHopi.vcf.gz
bcftools view ../../fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyIndelSites.vcf.gz -G Hopi | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../../fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyIndelSites_noHopi.vcf.gz

# vcf-shuffle-cols -t VQSRfiltered_90_G4_SNP_chr02_noHopi.vcf.gz /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr02_bcftools_sites.vcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr02_bcftools_sites_colshuffled.vcf.gz
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr02_bcftools_sites_colshuffled.vcf.gz \
# VQSRfiltered_90_G4_SNP_chr02_noHopi.vcf.gz \
# chr02_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_noHopi.vcf.gz \
# ../../fastq/invariants/VCMA_GATK_chr02_secondFilter_onlyIndelSites_noHopi.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
# | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr02_final_lessStringentInvariants.vcf.gz
# 
# 
