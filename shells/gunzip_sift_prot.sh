#!/bin/bash
#SBATCH -D /clusterfs/vector/scratch/makman/sift/Heli/prot_db
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=96000
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/sift/outs/gunzip.out
#SBATCH -e /global/home/users/makman/sift/outs/gunzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --job-name=gunzip
srun gunzip *.gz
