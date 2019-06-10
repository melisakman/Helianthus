#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J filGK6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_GATK6_secondFilter_onlyIndelSites.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_GATK6_secondFilter_onlyIndelSites.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat VCMA_chr01_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr01_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr02_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr02_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr03_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr03_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr04_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr04_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr05_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr05_secondFilter_onlyIndelSites.vcf.gz
zcat VCMA_chr06_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr06_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr07_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr07_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr08_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr08_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr09_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr09_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr10_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr10_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr11_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr11_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr12_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr12_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr13_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr13_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr14_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr14_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr15_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr15_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr16_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr16_secondFilter_onlyIndelSites.vcf.gz
# zcat VCMA_chr17_indel_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr17_secondFilter_onlyIndelSites.vcf.gz


