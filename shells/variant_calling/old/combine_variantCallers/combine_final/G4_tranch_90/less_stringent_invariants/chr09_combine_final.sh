#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr09_lessStringentInvariants.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr09_lessStringentInvariants.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


# bcftools filter -r HanXRQChr09 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR90_G4.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr09.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_unfiltered_2plus_GATK_invariantSitesOnly.vcf > chr09_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz
# zcat chr09_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz | bcftools filter -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
gunzip /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr09_allFiltered_onlyInvariantSites.vcf.gz
python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr09_allFiltered_onlyInvariantSites.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr09_2/sites.txt /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites.vcf chr09 

rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr09_allFiltered_onlyInvariantSites.vcf

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix VQSRfiltered_90_G4_SNP_chr09.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites.vcf > /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites.vcf.gz
rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites.vcf

bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt VQSRfiltered_90_G4_SNP_chr09.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o VQSRfiltered_90_G4_SNP_chr09_renamed.vcf
bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf
bcftools view -S /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_names.txt ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites.vcf.gz | bcftools reheader -s /clusterfs/rosalind/users/makman/GATK/bcftools_isec/old/secondFilter/sample_rename.txt -o ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites_renamed.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VQSRfiltered_90_G4_SNP_chr09_renamed.vcf > VQSRfiltered_90_G4_SNP_chr09_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf > chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites_renamed.vcf > ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites_renamed.vcf.gz
rm VQSRfiltered_90_G4_SNP_chr09_renamed.vcf
rm chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf
rm  ../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites_renamed.vcf

vcf-shuffle-cols -t VQSRfiltered_90_G4_SNP_chr09_renamed.vcf.gz /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites_colshuffled.vcf.gz
# 
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
/clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr09_bcftools_sites_colshuffled.vcf.gz \
VQSRfiltered_90_G4_SNP_chr09_renamed.vcf.gz \
chr09_unfiltered_2plus_GATK_invariantSitesOnly_noIndels_renamed.vcf.gz \
../../fastq/invariants/VCMA_GATK_chr09_secondFilter_onlyIndelSites_renamed.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr09_final_lessStringentInvariants.vcf.gz
