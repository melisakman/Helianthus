#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=36000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_raw.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_raw.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.5 
fastqc *.fastq.gz

