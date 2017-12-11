#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J catfastq9
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq9.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat HI.0440.004.Index_20.PPN083_Pool_R1.fastq.gz HI.0457.008.Index_20.PPN083_Pool_R1.fastq.gz > PPN083_R1.fastq
zcat HI.0440.004.Index_20.PPN083_Pool_R2.fastq.gz HI.0457.008.Index_20.PPN083_Pool_R2.fastq.gz > PPN083_R2.fastq
