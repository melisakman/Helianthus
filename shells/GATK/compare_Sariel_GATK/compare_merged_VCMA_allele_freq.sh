#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J allele_freq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq.out
#SBATCH -e /global/home/users/makman/GATK/outs/compare_Sariel_VCMA_allele_freq.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python extract_info.py overlapping_variants_from_VCMA.vcf

