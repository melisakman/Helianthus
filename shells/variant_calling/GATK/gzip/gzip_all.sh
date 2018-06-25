#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed/
#SBATCH -J fastqc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=48000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip_all.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip_all.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gzip HA124_R1_trimmed.fastq
gzip HA124_R2_trimmed.fastq
gzip HA316_R1_trimmed.fastq
gzip HA316_R2_trimmed.fastq
gzip HA433_R1_trimmed.fastq
gzip HA433_R2_trimmed.fastq
gzip HA442_R1_trimmed.fastq
gzip HA442_R2_trimmed.fastq
gzip HA821_R1_trimmed.fastq
gzip HA821_R2_trimmed.fastq
gzip HA89_R1_trimmed.fastq 
gzip HA89_R2_trimmed.fastq 
gzip PPN255_Manchurian_R1_trimmed.fastq
gzip PPN255_Manchurian_R2_trimmed.fastq
gzip RHA271_R1_trimmed.fastq
gzip RHA271_R2_trimmed.fastq
gzip RHA309_R1_trimmed.fastq
gzip RHA309_R2_trimmed.fastq
gzip RHA311_R1_trimmed.fastq
gzip RHA311_R2_trimmed.fastq
gzip RHA328_R1_trimmed.fastq
gzip RHA328_R2_trimmed.fastq
gzip RHA355_R1_trimmed.fastq
gzip RHA355_R2_trimmed.fastq
gzip RHA358_R1_trimmed.fastq
gzip RHA358_R2_trimmed.fastq
gzip RHA408_R1_trimmed.fastq
gzip RHA408_R2_trimmed.fastq
gzip RHA426_R1_trimmed.fastq
gzip RHA426_R2_trimmed.fastq
gzip RHA857_R1_trimmed.fastq
gzip RHA857_R2_trimmed.fastq
gzip VIR847_R1_trimmed.fastq
gzip VIR847_R2_trimmed.fastq