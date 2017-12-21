#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed/
#SBATCH -J trimTile
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim_byTile.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim_byTile.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

bwa mem -t 16 -a /home/makman/ProExp/bwamem/index/combinedF2I2transcripts /home/makman/ProExp/Demultiplexed/ALMA4/ProExpp1_d1_A_r_A_34_3.fastq > /home/makman/ProExp/bwamem/ProExpp1_d1_A_r_A_34_3.sam
