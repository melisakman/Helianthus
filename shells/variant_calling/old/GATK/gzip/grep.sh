#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/grep.out
#SBATCH -e /global/home/users/makman/GATK/outs/grep.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
echo "HA124 forward"
zcat HA124_R1_trimmed_fastq.gz | grep "SRR5140383.11."
echo "HA124 reverse"
zcat HA124_R2_trimmed_fastq.gz | grep "SRR5140383.11."

