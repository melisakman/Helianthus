#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr06_lessStringentInvariants.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr06_lessStringentInvariants.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


# bcftools filter -r HanXRQChr06 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR90_G4.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_90_G4_SNP_chr06.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr06_unfiltered_2plus_GATK_invariantSitesOnly.vcf > chr06_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz
# zcat chr06_unfiltered_2plus_GATK_invariantSitesOnly.vcf.gz | bcftools filter -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr06_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz
gunzip /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr06_allFiltered_onlyInvariantSites.vcf.gz
python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr06_allFiltered_onlyInvariantSites.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr06_2/sites.txt /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr06_bcftools_sites.vcf chr06 

rm /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariant_chr06_allFiltered_onlyInvariantSites.vcf

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
/clusterfs/rosalind/users/makman/GATK/freebayes/final_combined/freebayes_invariantSites_chr06_bcftools_sites.vcf \
VQSRfiltered_90_G4_SNP_chr06.vcf.gz \
chr06_unfiltered_2plus_GATK_invariantSitesOnly_noIndels.vcf.gz \
../../fastq/invariants/VCMA_GATK_chr06_secondFilter_onlyIndelSites.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr06_final_lessStringentInvariants.vcf.gz

