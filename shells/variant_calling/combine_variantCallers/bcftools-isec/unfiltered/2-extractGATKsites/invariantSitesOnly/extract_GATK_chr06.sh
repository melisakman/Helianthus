#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr06_invariantSitesOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr06_invariantSitesOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr06.vcf.gz

python /global/home/users/makman/git/Helianthus/shells/variant_calling/combine_variantCallers/bcftools-isec/unfiltered/2-extractGATKsites/extract_GATK_variants.py /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr06.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/invariantSitesOnly/chr06_2/sites.txt /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered/chr06_unfiltered_2plus_GATK_invariantSitesOnly.vcf chr06 

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr06.vcf > /clusterfs/rosalind/users/makman/GATK/fastq/invariants/VCMA_chr06.vcf.gz