#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/GATK_variant_calling/fastq/bam/
#SBATCH -J copy
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=36000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/copy.out
#SBATCH -e /global/home/users/makman/GATK/outs/copy.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
cp /clusterfs/vector/scratch/makman/GATK_variant_calling/fastq/* /global/scratch/makman/GATK/fastq/


