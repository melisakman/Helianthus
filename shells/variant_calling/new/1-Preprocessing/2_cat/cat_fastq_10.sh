#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/
#SBATCH -J catfastq10
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq10.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cp HI.1874.003.Index_11.MexCult1_R1.fastq.gz ready/MexCult1_R1.fastq.gz
cp HI.1874.003.Index_11.MexCult1_R2.fastq.gz ready/MexCult1_R2.fastq.gz

