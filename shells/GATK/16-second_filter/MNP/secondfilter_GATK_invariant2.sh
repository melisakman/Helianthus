#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J GKchr02
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filterMNP_GATK_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filterMNP_GATK_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/


zcat VCMA_chr02_MNP_hardfiltered.vcf.gz | bcftools filter -g 5 -i 'TYPE = "mnp"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_chr02_MNP_secondFilter.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix VCMA_chr02_MNP_secondFilter.vcf.gz

vcf-concat VCMA_chr02_MNP_secondFilter.vcf.gz filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz | vcf-sort -t /global/scratch/makman/temp_files | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > filtered_combined/VCMA_GATK_chr02_all_secondFilter.vcf.gz

