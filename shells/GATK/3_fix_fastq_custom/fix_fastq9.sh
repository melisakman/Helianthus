#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed
#SBATCH -J fixfastq9
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fix_fastq9.out
#SBATCH -e /global/home/users/makman/GATK/outs/fix_fastq9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip HA404_R1_trimmed.fastq.gz
gunzip HA404_R2_trimmed.fastq.gz

# python remove_pair_info.py HA404_R1_trimmed.fastq HA404_R1_trimmed_fixed.fastq
python remove_pair_info.py HA404_R2_trimmed.fastq HA404_R2_trimmed_fixed.fastq

# gzip HA404_R1_trimmed_fixed.fastq
gzip HA404_R2_trimmed_fixed.fastq

