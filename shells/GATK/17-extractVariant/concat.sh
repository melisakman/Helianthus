#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J concat
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VCMA_SNP_indel_concat.out
#SBATCH -e /global/home/users/makman/GATK/outs/VCMA_SNP_indel_concat.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

vcf-concat \
vcf-isec_chr01/chr01_intersect_variantsOnly.vcf.gz \
vcf-isec_chr02/chr02_intersect_variantsOnly.vcf.gz \
vcf-isec_chr03/chr03_intersect_variantsOnly.vcf.gz \
vcf-isec_chr04/chr04_intersect_variantsOnly.vcf.gz \
vcf-isec_chr05/chr05_intersect_variantsOnly.vcf.gz \
vcf-isec_chr06/chr06_intersect_variantsOnly.vcf.gz \
vcf-isec_chr07/chr07_intersect_variantsOnly.vcf.gz \
vcf-isec_chr08/chr08_intersect_variantsOnly.vcf.gz \
vcf-isec_chr09/chr09_intersect_variantsOnly.vcf.gz \
vcf-isec_chr10/chr10_intersect_variantsOnly.vcf.gz \
vcf-isec_chr11/chr11_intersect_variantsOnly.vcf.gz \
vcf-isec_chr12/chr12_intersect_variantsOnly.vcf.gz \
vcf-isec_chr13/chr13_intersect_variantsOnly.vcf.gz \
vcf-isec_chr14/chr14_intersect_variantsOnly.vcf.gz \
vcf-isec_chr15/chr15_intersect_variantsOnly.vcf.gz \
vcf-isec_chr16/chr16_intersect_variantsOnly.vcf.gz \
vcf-isec_chr17/chr17_intersect_variantsOnly.vcf.gz > VCMA_variantOnly_allchr.vcf

sed 's/HanXRQChr//g' VCMA_variantOnly_allchr.vcf > VCMA_variantOnly_allchr_noHanXRQ.vcf
 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_variantOnly_allchr.vcf > VCMA_variantOnly_allchr.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_variantOnly_allchr_noHanXRQ.vcf > VCMA_variantOnly_allchr_noHanXRQ.vcf.gz 
