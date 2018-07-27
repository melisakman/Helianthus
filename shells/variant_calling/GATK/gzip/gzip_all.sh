#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J gzip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip_all.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip_all.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip *.vcf