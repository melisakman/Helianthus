#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/GATK_variant_calling/fastq/
#SBATCH -J copy
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=36000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/copy.out
#SBATCH -e /global/home/users/makman/GATK/outs/copy.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
cp /clusterfs/vector/scratch/makman/GATK_variant_calling/fastq/* /clusterfs/rosalind/users/makman/GATK/fastq/


