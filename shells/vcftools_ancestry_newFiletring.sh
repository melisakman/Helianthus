#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/vcf/Sariel_new_variant_calling/filtered/
#SBATCH -J ancestry
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_new_variant_calling_dataStructure.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_new_variant_calling_dataStructure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-1

module load python
