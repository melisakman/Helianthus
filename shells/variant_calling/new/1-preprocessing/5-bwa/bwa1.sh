#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready/
#SBATCH -J bwa1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=54000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

