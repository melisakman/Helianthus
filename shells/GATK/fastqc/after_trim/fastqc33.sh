#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqc33
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=8:45:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_trim33.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_trim33.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.5 

fastqc Pueblo_R1_trimmed_fastq.gz 
fastqc Pueblo_R2_trimmed_fastq.gz 
# fastqc RHA857_R1_trimmed_fastq.gz
# fastqc RHA857_R2_trimmed_fastq.gz


