#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools/final
#SBATCH -J vcfpi
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VQSR_pi.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VQSR_pi.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
