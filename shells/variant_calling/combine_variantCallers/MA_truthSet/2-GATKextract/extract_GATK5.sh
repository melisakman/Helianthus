#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 5_chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=6
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_truth5.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_truth5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr01.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr01_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr01_truth_GATK.vcf chr01 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr02.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr02_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr02_truth_GATK.vcf chr02 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr03.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr03_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr03_truth_GATK.vcf chr03 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr04.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr04_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr04_truth_GATK.vcf chr04 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr05.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr05_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr05_truth_GATK.vcf chr05 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr06.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr06_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr06_truth_GATK.vcf chr06 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr07.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr07_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr07_truth_GATK.vcf chr07 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr08.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr08_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr08_truth_GATK.vcf chr08 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr09.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr09_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr09_truth_GATK.vcf chr09 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr10.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr10_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr10_truth_GATK.vcf chr10 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr11.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr11_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr11_truth_GATK.vcf chr11 
python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr12.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr12_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr12_truth_GATK.vcf chr12 
python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr13.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr13_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr13_truth_GATK.vcf chr13 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr14.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr14_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr14_truth_GATK.vcf chr14 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr15.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr15_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr15_truth_GATK.vcf chr15 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr16.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr16_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr16_truth_GATK.vcf chr16 
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr17.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr17_3/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/chr17_truth_GATK.vcf chr17 

