#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis/
#SBATCH -J At
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/At_extract_vcf.out
#SBATCH -e /global/home/users/makman/vcftools/outs/At_extract_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --vcf testy.recode.vcf --bed topMM_genes_5KupDownStream.bed --recode --out testy_topMM_5KupDownStream.recode.vcf 