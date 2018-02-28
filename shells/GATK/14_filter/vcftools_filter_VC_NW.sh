#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J filt2
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/filter_VC_NW.out
#SBATCH -e /global/home/users/makman/GATK/outs/filter_VC_NW.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
module load gcc/4.8.5 

zcat Filtered.only_SNPs.whole_genome_hanxrq_removed.vcf.gz | /clusterfs/rosalind/users/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > Filtered.only_SNPs.whole_genome_hanxrq_removed_filtered.vcf.gz
