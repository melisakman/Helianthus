#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/ordered/
#SBATCH -J gunzip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/gzip.out
#SBATCH -e /global/home/users/makman/snpEff/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
srun gzip /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf