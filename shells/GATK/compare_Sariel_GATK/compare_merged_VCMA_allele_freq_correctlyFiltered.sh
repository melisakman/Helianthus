#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J allele_freq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq_propFiltered.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq_propFiltered.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python extract_info.py overlapping_variants_from_VCMA_sorted_properlyFiltered.vcf
python extract_info.py non_overlapping_variants_from_VC_MA_sorted_properlyFiltered.vcf