#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J gzip22
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip22.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip22.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip RHA408_R2.fastq

