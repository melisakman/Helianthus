#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J zip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip VCMA_chr01.vcf