#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J filST1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_samtools1test.out
#SBATCH -i /global/home/users/makman/GATK/outs/bcftools_filter_samtools1test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load java

# zcat samtools_invariant_chr01_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0 && QUAL > 50 && MQ > 40'  | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr01_Filtered_sorted_test.vcf.gz


