#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/
#SBATCH -J subsample 
#SBATCH --partition=vector 
#SBATCH --qos=vector_batch 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10000
#SBATCH --time=1:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/subsampleAri2.out
#SBATCH -e /global/home/users/makman/trinity/outs/subsampleAri2.err
#SBATCH --mail-user=makman@berkeley.edu 
#SBATCH --mail-type=All 
#SBATCH --array=1-36
