#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_unfiltered_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_unfiltered_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/filtered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr09.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr09_2/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr09_filtered_2plus_GATK.vcf chr09 

