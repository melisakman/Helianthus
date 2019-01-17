#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready
#SBATCH -J gzip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip *.fastq