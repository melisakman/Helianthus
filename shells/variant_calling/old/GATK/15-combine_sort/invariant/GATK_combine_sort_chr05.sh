#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J sort05
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr05.out
#SBATCH -e /global/home/users/makman/GATK/outs/GATK_filtered_combineSort_chr05.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# vcf-concat VCMA_chr05_NO_VARIATION_hardfiltered.vcf.gz VCMA_chr05_SNP_hardfiltered.vcf.gz VCMA_chr05_indel_hardfiltered.vcf.gz > VCMA_GATK_chr05_unsorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VCMA_GATK_chr05_unsorted.vcf > filtered_combined/VCMA_GATK_chr05_hardFiltered_sorted.vcf
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c filtered_combined/VCMA_GATK_chr05_hardFiltered_sorted.vcf > filtered_combined/VCMA_GATK_chr05_hardFiltered_sorted.vcf.gz 
