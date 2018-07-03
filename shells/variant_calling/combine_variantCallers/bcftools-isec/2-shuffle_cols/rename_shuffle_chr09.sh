#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr09_2
#SBATCH -J shfchr09
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=32:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/rename_shuffle_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/rename_shuffle_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

bcftools view -S ../old/secondFilter/sample_names.txt 0000.vcf.gz | bcftools reheader -s ../old/secondFilter/sample_rename.txt -o 0000_renamed.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c 0000_renamed.vcf > 0000_renamed.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t 0000_renamed.vcf.gz 0001.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > 0001_sorted.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t 0000_renamed.vcf.gz 0002.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > 0002_sorted.vcf.gz
