#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G4_90/
#SBATCH -J var_invar
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_variant_invaraintCount.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_variant_invaraintCount.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr01_final.vcf chr01_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr02_final.vcf chr02_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr03_final.vcf chr03_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr04_final.vcf chr04_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr05_final.vcf chr05_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr06_final.vcf chr06_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr07_final.vcf chr07_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr08_final.vcf chr08_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr09_final.vcf chr09_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr10_final.vcf chr10_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr11_final.vcf chr11_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr12_final.vcf chr12_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr13_final.vcf chr13_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr14_final.vcf chr14_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr15_final.vcf chr15_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr16_final.vcf chr16_500bp_variant_invariant_counts.txt
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr17_final.vcf chr17_500bp_variant_invariant_counts.txt


python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/invariants_lowSNPintervals_chrSeparately.py chr01_final.vcf chr01_1K_variant_invariant_counts.txt
