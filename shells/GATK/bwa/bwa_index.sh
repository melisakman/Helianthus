#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/bwa_index/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa_index.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa_index.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bwa 
bwa index /clusterfs/vector/instrumentData/blackmanlab/Helianthus/XRQ/HanXRQr1.0-20151230.fa