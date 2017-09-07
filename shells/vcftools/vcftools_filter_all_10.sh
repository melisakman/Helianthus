#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=96000
#SBATCH --time=10:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_filter_all_10_sort.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_filter_all_10_sort.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load vcftools/0.1.13
module load gcc/4.8.5 

vcf-sort ./chr10_beforesort.vcf | gzip -c > ./HanXRQChr10_complete_ordered_norm_maf_filt_indel_in.vcf.gz
