#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J gzipFB
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip ./*.vcf