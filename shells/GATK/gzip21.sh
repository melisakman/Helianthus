#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J gzip21
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip21.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip21.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip RHA408_R1.fastq

