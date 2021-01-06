#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/
#SBATCH -J copy
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/gzip1.out
#SBATCH -e /global/home/users/makman/vcftools/outs/gzip1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cp -r /global/scratch/makman/nina ./