#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr03
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_unfiltered_chr03.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_unfiltered_chr03.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/filtered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr03.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr03_2/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr03_filtered_2plus_GATK.vcf chr03 

