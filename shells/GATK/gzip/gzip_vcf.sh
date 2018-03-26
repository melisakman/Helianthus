#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq
#SBATCH -J zip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
gzip VCMA_ethno/*.vcf
gzip VCMA_regular/*.vcf
gzip final_vcfs/*.vcf
gzip merged_filtered/*.vcf

