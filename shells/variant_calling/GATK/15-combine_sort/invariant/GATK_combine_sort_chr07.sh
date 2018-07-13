#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J sort07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=30:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr07.out
#SBATCH -e /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr07.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

vcf-concat VCMA_chr07_NO_VARIATION_hardfiltered.vcf.gz VCMA_chr07_SNP_hardfiltered.vcf.gz VCMA_chr07_indel_hardfiltered.vcf.gz > VCMA_GATK_chr07_unsorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VCMA_GATK_chr07_unsorted.vcf > filtered_combined/VCMA_GATK_chr07_hardFiltered_sorted.vcf
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c filtered_combined/VCMA_GATK_chr07_hardFiltered_sorted.vcf > filtered_combined/VCMA_GATK_chr07_hardFiltered_sorted.vcf.gz 

zcat filtered_combined/VCMA_GATK_chr07_hardFiltered_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > filtered_combined/VCMA_GATK_chr07_secondFilter.vcf.gz
