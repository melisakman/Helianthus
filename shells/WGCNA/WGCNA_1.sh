#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/WGCNA_Ara/
#SBATCH -J WGCNA
#SBATCH --verbose
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/WGCNA/WGCNA_power.out
#SBATCH -e /global/home/users/makman/WGCNA/WGCNA_power.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load r/3.2.5

Rscript --vanilla /global/home/users/makman/git/Helianthus/shells/WGCNA/sft_WGCNA.R
