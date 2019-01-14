#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J size
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/check_size.out
#SBATCH -e /global/home/users/makman/GATK/outs/check_size.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat annND1W-6_R1.fastq.gz | wc -l
zcat annND1W-6_R2.fastq.gz | wc -l
zcat annSD1W-35_R1.fastq.gz | wc -l
zcat annSD1W-35_R2.fastq.gz | wc -l
zcat annSD2W-18_R1.fastq.gz | wc -l
zcat annSD2W-18_R2.fastq.gz | wc -l


