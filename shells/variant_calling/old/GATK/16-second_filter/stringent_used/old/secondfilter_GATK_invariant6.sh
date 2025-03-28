#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/filtered_combined/
#SBATCH -J filGK6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_GATK6.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_GATK6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat VCMA_GATK_chr01_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr01_secondFilter.vcf.gz
# zcat VCMA_GATK_chr02_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr02_secondFilter.vcf.gz
# zcat VCMA_GATK_chr03_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr03_secondFilter.vcf.gz
# zcat VCMA_GATK_chr04_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr04_secondFilter.vcf.gz
# zcat VCMA_GATK_chr05_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr05_secondFilter.vcf.gz
zcat VCMA_GATK_chr06_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr06_secondFilter.vcf.gz
# zcat VCMA_GATK_chr07_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr07_secondFilter.vcf.gz
# zcat VCMA_GATK_chr08_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr08_secondFilter.vcf.gz
# zcat VCMA_GATK_chr09_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr09_secondFilter.vcf.gz
# zcat VCMA_GATK_chr10_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr10_secondFilter.vcf.gz
# zcat VCMA_GATK_chr11_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr11_secondFilter.vcf.gz
# zcat VCMA_GATK_chr12_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr12_secondFilter.vcf.gz
# zcat VCMA_GATK_chr13_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr13_secondFilter.vcf.gz
# zcat VCMA_GATK_chr14_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr14_secondFilter.vcf.gz
# zcat VCMA_GATK_chr15_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr15_secondFilter.vcf.gz
# zcat VCMA_GATK_chr16_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr16_secondFilter.vcf.gz
# zcat VCMA_GATK_chr17_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr17_secondFilter.vcf.gz


