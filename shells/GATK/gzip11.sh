#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J gzip11
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip11.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip11.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip RHA271_R1.fastq
gzip RHA271_R2.fastq
gzip RHA309_R1.fastq
gzip RHA309_R2.fastq
# gzip RHA311_R1.fastq
# gzip RHA311_R2.fastq
# gzip RHA328_R1.fastq
# gzip RHA328_R2.fastq
# gzip RHA355_R1.fastq
# gzip RHA355_R2.fastq
# gzip RHA358_R1.fastq
# gzip RHA358_R2.fastq
# gzip RHA426_R1.fastq
# gzip RHA426_R2.fastq
# gzip RHA857_R1.fastq
# gzip RHA857_R2.fastq
# gzip HA316_R1.fastq
# gzip HA316_R2.fastq
# gzip HA404_R1.fastq
# gzip HA404_R2.fastq
# gzip HA433_R1.fastq
# gzip HA433_R2.fastq
# gzip HA442_R1.fastq
# gzip HA442_R2.fastq
# gzip HA821_R1.fastq
# gzip HA821_R2.fastq
# gzip HA89_R1.fastq 
# gzip HA89_R2.fastq 
# gzip VIR847_R1.fastq  
# gzip VIR847_R2.fastq  
# gzip PPN255_Manchurian_R1.fastq
# gzip PPN255_Manchurian_R2.fastq