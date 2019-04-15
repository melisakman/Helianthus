#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/bedassle/final
#SBATCH -J badass5
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/bedassle_temp_mean.out
#SBATCH -e /global/home/users/makman/Arabidopsis/bedassle_temp_mean.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load bcftools/1.6
module load r/3.5.1

Rscript ~/git/Helianthus/shells/bedassle/subsets/bedassle.r