#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed
#SBATCH -J gzip10
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip10.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

wc -l *_fixed.fastq


