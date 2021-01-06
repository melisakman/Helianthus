#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/bedassle/final
#SBATCH -J badass5
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/bedassle_subset5.out
#SBATCH -e /global/home/users/makman/Arabidopsis/bedassle_subset5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load r/3.5.1

Rscript ~/git/Helianthus/shells/bedassle/subsets/subset5.R