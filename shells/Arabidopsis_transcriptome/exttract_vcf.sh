#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis/
#SBATCH -J At
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/At_extract_vcf.out
#SBATCH -e /global/home/users/makman/vcftools/outs/At_extract_vcf.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --vcf testy.recode.vcf --bed topMM_genes_5KupDownStream.bed --recode --out testy_topMM_5KupDownStream.recode.vcf 