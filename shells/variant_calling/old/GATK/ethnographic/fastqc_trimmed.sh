#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ethno
#SBATCH -J Paiute
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_ethno_trimmed.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_ethno_trimmed.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load fastqc/0.11.7

fastqc *_trimmed.fastq.gz
