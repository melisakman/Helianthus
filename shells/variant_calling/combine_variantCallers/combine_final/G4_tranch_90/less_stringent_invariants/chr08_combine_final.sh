#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr08
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr08_lessStringentInvariants.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr08_lessStringentInvariants.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


# bcftools filter -r HanXRQChr08 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR90_G4.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr08.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_unfiltered_2plus_GATK_invariantSitesOnly.vcf > chr08_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz
# zcat chr08_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz | bcftools filter -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
gunzip /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr08_allFiltered_onlyInvariantSites.vcf.gz
python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr08_allFiltered_onlyInvariantSites.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr08_2/sites.txt /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites.vcf chr08 

rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr08_allFiltered_onlyInvariantSites.vcf

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix VQSRfiltered_90_G4_SNP_chr08.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites.vcf > /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites.vcf.gz
rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites.vcf

bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt VQSRfiltered_90_G4_SNP_chr08.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o VQSRfiltered_90_G4_SNP_chr08_renamed.vcf
bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf
bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites_renamed.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VQSRfiltered_90_G4_SNP_chr08_renamed.vcf > VQSRfiltered_90_G4_SNP_chr08_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf > chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites_renamed.vcf > ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites_renamed.vcf.gz
rm VQSRfiltered_90_G4_SNP_chr08_renamed.vcf
rm chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf
rm  ../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites_renamed.vcf

vcf-shuffle-cols -t VQSRfiltered_90_G4_SNP_chr08_renamed.vcf.gz /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites_colshuffled.vcf.gz
# 
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
/clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr08_bcftools_sites_colshuffled.vcf.gz \
VQSRfiltered_90_G4_SNP_chr08_renamed.vcf.gz \
chr08_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf.gz \
../../fastq/invariants/VCMA_GATK_chr08_secondFilter_onlyIndelSites_renamed.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr08_final_lessStringentInvariants.vcf.gz
