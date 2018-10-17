#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr04_invariantSitesOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr04_invariantSitesOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr04.vcf.gz

python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr04.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr04_2sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/chr04_unfiltered_2plus_GATK_invariantSitesOnly.vcf chr04 

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr04.vcf > /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr04.vcf.gz