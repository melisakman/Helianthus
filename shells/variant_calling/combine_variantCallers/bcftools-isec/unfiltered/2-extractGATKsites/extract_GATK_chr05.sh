#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr05
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr05.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr05.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr05.vcf.gz

python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr05.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/chr05_2/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/chr05_unfiltered_2plus_GATK.vcf chr05 

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr05.vcf > /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr05.vcf.gz