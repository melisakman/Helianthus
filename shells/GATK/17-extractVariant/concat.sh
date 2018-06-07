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
#SBATCH -o /global/home/users/makman/GATK/outs/VCMA_SNP_indel_concat_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/VCMA_SNP_indel_concat_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# for 2+ variants to be used in SNP Relate
# vcf-concat \
# vcf-isec_chr01/chr01_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr02/chr02_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr03/chr03_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr04/chr04_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr05/chr05_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr06/chr06_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr07/chr07_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr08/chr08_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr09/chr09_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr10/chr10_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr11/chr11_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr12/chr12_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr13/chr13_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr14/chr14_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr15/chr15_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr16/chr16_intersect_variantsOnly.vcf.gz \
# vcf-isec_chr17/chr17_intersect_variantsOnly.vcf.gz > VCMA_variantOnly_allchr.vcf
# 
# sed 's/HanXRQChr//g' VCMA_variantOnly_allchr.vcf > VCMA_variantOnly_allchr_noHanXRQ.vcf
#  
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_variantOnly_allchr.vcf > VCMA_variantOnly_allchr.vcf.gz 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_variantOnly_allchr_noHanXRQ.vcf > VCMA_variantOnly_allchr_noHanXRQ.vcf.gz 


# for all 3 intersect variants to be used in SNP Relate

vcf-concat \
vcf-isec_chr01_3/chr01_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr02_3/chr02_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr03_3/chr03_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr04_3/chr04_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr05_3/chr05_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr06_3/chr06_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr07_3/chr07_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr08_3/chr08_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr09_3/chr09_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr10_3/chr10_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr11_3/chr11_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr12_3/chr12_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr13_3/chr13_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr14_3/chr14_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr15_3/chr15_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr16_3/chr16_intersect_3_variantsOnly.vcf.gz \
vcf-isec_chr17_3/chr17_intersect_3_variantsOnly.vcf.gz > VCMA_3_variantOnly_allchr.vcf

sed 's/HanXRQChr//g' VCMA_3_variantOnly_allchr.vcf > VCMA_3_variantOnly_allchr_noHanXRQ.vcf
 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_3_variantOnly_allchr.vcf > VCMA_3_variantOnly_allchr.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_3_variantOnly_allchr_noHanXRQ.vcf > VCMA_3_variantOnly_allchr_noHanXRQ.vcf.gz 
