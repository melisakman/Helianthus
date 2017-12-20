#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqcTile
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=8:45:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_byTile.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_byTile.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.5 

fastqc annIA1W-1_R1_trimmed_byTile.fastq.gz
fastqc annIA1W-1_R2_trimmed_byTile.fastq.gz