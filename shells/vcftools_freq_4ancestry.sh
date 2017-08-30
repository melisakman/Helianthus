#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/ancestry/
#SBATCH -J vcffreq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/vcftools_freq.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/vcftools_freq.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load vcftools/0.1.13

vcftools --gzvcf /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf --freq --out chr1_freq

