#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J allele_freq
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=16000
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq_propFiltered.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq_propFiltered.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python extract_info.py overlapping_variants_from_VCMA_sorted_properlyFiltered.vcf