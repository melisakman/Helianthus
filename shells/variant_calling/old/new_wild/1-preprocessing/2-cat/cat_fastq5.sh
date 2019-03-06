#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J catfastq
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=720:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/catfastq5.out
#SBATCH -e /global/home/users/makman/GATK/outs/catfastq5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

zcat HI.1579.004.BioO_10.ann20-seAZ_R1.fastq.gz SRR5907851_1.fastq.gz > ready/ann20-seAZ_R1.fastq
gzip ready/ann20-seAZ_R1.fastq

zcat HI.1579.004.BioO_10.ann20-seAZ_R2.fastq.gz SRR5907851_2.fastq.gz > ready/ann20-seAZ_R2.fastq
gzip ready/ann20-seAZ_R2.fastq