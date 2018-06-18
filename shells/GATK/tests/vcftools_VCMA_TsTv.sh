#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J stats
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
bcftools stats vcf-isec_chr01/chr01_intersect.vcf.gz > chr01_intersect.vchk
bcftools stats vcf-isec_chr02/chr02_intersect.vcf.gz > chr02_intersect.vchk
bcftools stats vcf-isec_chr03/chr03_intersect.vcf.gz > chr03_intersect.vchk
bcftools stats vcf-isec_chr04/chr04_intersect.vcf.gz > chr04_intersect.vchk
bcftools stats vcf-isec_chr05/chr05_intersect.vcf.gz > chr05_intersect.vchk
bcftools stats vcf-isec_chr06/chr06_intersect.vcf.gz > chr06_intersect.vchk
bcftools stats vcf-isec_chr07/chr07_intersect.vcf.gz > chr07_intersect.vchk
bcftools stats vcf-isec_chr08/chr08_intersect.vcf.gz > chr08_intersect.vchk
bcftools stats vcf-isec_chr09/chr09_intersect.vcf.gz > chr09_intersect.vchk
bcftools stats vcf-isec_chr10/chr10_intersect.vcf.gz > chr10_intersect.vchk
bcftools stats vcf-isec_chr11/chr11_intersect.vcf.gz > chr11_intersect.vchk
bcftools stats vcf-isec_chr12/chr12_intersect.vcf.gz > chr12_intersect.vchk
bcftools stats vcf-isec_chr13/chr13_intersect.vcf.gz > chr13_intersect.vchk
bcftools stats vcf-isec_chr14/chr14_intersect.vcf.gz > chr14_intersect.vchk
bcftools stats vcf-isec_chr15/chr15_intersect.vcf.gz > chr15_intersect.vchk
bcftools stats vcf-isec_chr16/chr16_intersect.vcf.gz > chr16_intersect.vchk
bcftools stats vcf-isec_chr17/chr17_intersect.vcf.gz > chr17_intersect.vchk
bcftools stats vcf-isec_chr01_3/chr01_intersect_3.vcf.gz > chr01_intersect_3.vchk
bcftools stats vcf-isec_chr02_3/chr02_intersect_3.vcf.gz > chr02_intersect_3.vchk
bcftools stats vcf-isec_chr03_3/chr03_intersect_3.vcf.gz > chr03_intersect_3.vchk
bcftools stats vcf-isec_chr04_3/chr04_intersect_3.vcf.gz > chr04_intersect_3.vchk
bcftools stats vcf-isec_chr05_3/chr05_intersect_3.vcf.gz > chr05_intersect_3.vchk
bcftools stats vcf-isec_chr06_3/chr06_intersect_3.vcf.gz > chr06_intersect_3.vchk
bcftools stats vcf-isec_chr07_3/chr07_intersect_3.vcf.gz > chr07_intersect_3.vchk
bcftools stats vcf-isec_chr08_3/chr08_intersect_3.vcf.gz > chr08_intersect_3.vchk
bcftools stats vcf-isec_chr09_3/chr09_intersect_3.vcf.gz > chr09_intersect_3.vchk
bcftools stats vcf-isec_chr10_3/chr10_intersect_3.vcf.gz > chr10_intersect_3.vchk
bcftools stats vcf-isec_chr11_3/chr11_intersect_3.vcf.gz > chr11_intersect_3.vchk
bcftools stats vcf-isec_chr12_3/chr12_intersect_3.vcf.gz > chr12_intersect_3.vchk
bcftools stats vcf-isec_chr13_3/chr13_intersect_3.vcf.gz > chr13_intersect_3.vchk
bcftools stats vcf-isec_chr14_3/chr14_intersect_3.vcf.gz > chr14_intersect_3.vchk
bcftools stats vcf-isec_chr15_3/chr15_intersect_3.vcf.gz > chr15_intersect_3.vchk
bcftools stats vcf-isec_chr16_3/chr16_intersect_3.vcf.gz > chr16_intersect_3.vchk
bcftools stats vcf-isec_chr17_3/chr17_intersect_3.vcf.gz > chr17_intersect_3.vchk
