#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/vcf/Sariel_new_variant_calling/filtered/
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=64000
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load vcftools/0.1.13
module load gcc/4.8.5 
vcf-sort /HanXRQChr01_filter01.vcf.gz | gzip -c > ./ordered/HanXRQChr01_filter01.vcf.gz

