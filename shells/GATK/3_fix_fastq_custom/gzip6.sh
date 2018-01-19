#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed_fixed/
#SBATCH -J gzip6
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip6.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gzip HA124_R1_trimmed_fixed.fastq 
# gzip HA124_R2_trimmed_fixed.fastq 
# gzip HA316_R1_trimmed_fixed.fastq 
# gzip HA316_R2_trimmed_fixed.fastq 
# gzip HA404_R1_trimmed_fixed.fastq 
# gzip HA404_R2_trimmed_fixed.fastq 
# gzip HA433_R1_trimmed_fixed.fastq 
# gzip HA433_R2_trimmed_fixed.fastq 
# gzip HA442_R1_trimmed_fixed.fastq 
# gzip HA442_R2_trimmed_fixed.fastq 
# gzip HA821_R1_trimmed_fixed.fastq 
# gzip HA821_R2_trimmed_fixed.fastq 
# gzip RHA271_R1_trimmed_fixed.fastq
# gzip RHA271_R2_trimmed_fixed.fastq
# gzip RHA309_R1_trimmed_fixed.fastq
# gzip RHA309_R2_trimmed_fixed.fastq
# gzip RHA311_R1_trimmed_fixed.fastq
# gzip RHA311_R2_trimmed_fixed.fastq
# gzip RHA328_R1_trimmed_fixed.fastq
# gzip RHA328_R2_trimmed_fixed.fastq
gzip RHA355_R1_trimmed_fixed.fastq
gzip RHA355_R2_trimmed_fixed.fastq
gzip RHA358_R1_trimmed_fixed.fastq
gzip RHA358_R2_trimmed_fixed.fastq
# gzip RHA408_R1_trimmed_fixed.fastq
# gzip RHA408_R2_trimmed_fixed.fastq
# gzip RHA857_R1_trimmed_fixed.fastq
# gzip RHA857_R2_trimmed_fixed.fastq
# gzip VIR847_R1_trimmed_fixed.fastq
# gzip VIR847_R2_trimmed_fixed.fastq
# gzip HA89_R1_trimmed_fixed.fastq 
# gzip HA89_R2_trimmed_fixed.fastq 
# gzip PPN255_Manchurian_R1_trimmed_fixed.fastq 
# gzip PPN255_Manchurian_R2_trimmed_fixed.fastq 


