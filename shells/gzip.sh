#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/snpEff/results
#SBATCH -J gzip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/gzip.out
#SBATCH -e /global/home/users/makman/snpEff/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
srun gzip *.vcf