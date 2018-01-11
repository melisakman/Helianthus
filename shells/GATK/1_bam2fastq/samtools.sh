#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/bam/
#SBATCH -J samtools
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=36:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/samtools.out
#SBATCH -e /global/home/users/makman/GATK/outs/samtools.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools/1.3.1
samtools view /clusterfs/rosalind/users/makman/GATK/fastq/bam/PPN262_3b7_HanXRQ.bam | grep -n "HWI-ST916:92:C0F4AACXX:4:2206:19793:27999"
