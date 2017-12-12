#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/bin
#SBATCH -J XPCLR
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=36000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/tutorial.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/tutorial.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
XPCLR -xpclr CEU.9 YRI.9 snp.9 xpclr.9 -w1 0.005 200 2000 1 -p0 0.95