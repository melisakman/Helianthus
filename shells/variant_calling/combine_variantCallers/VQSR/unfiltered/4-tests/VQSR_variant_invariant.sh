#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J var_invar
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_variant_invaraintCount.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_variant_invaraintCount.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip *.vcf.gz

# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr01_final_lessStringentInvariants.vcf chr01_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr02_final_lessStringentInvariants.vcf chr02_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr03_final_lessStringentInvariants.vcf chr03_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr04_final_lessStringentInvariants.vcf chr04_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr05_final_lessStringentInvariants.vcf chr05_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr06_final_lessStringentInvariants.vcf chr06_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr07_final_lessStringentInvariants.vcf chr07_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr08_final_lessStringentInvariants.vcf chr08_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr09_final_lessStringentInvariants.vcf chr09_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr10_final_lessStringentInvariants.vcf chr10_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr11_final_lessStringentInvariants.vcf chr11_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr12_final_lessStringentInvariants.vcf chr12_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr13_final_lessStringentInvariants.vcf chr13_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr14_final_lessStringentInvariants.vcf chr14_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr15_final_lessStringentInvariants.vcf chr15_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr16_final_lessStringentInvariants.vcf chr16_10K_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr17_final_lessStringentInvariants.vcf chr17_10K_variant_invariant_counts.txt

