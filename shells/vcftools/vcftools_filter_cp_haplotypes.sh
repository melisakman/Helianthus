#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/cp_haplotype
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=32000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_filter_cp_haplotype.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_filter_cp_haplotype.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15


vcftools --vcf All_plastomes_5.named.vcf --keep samples.txt --out plastome_melis.vcf