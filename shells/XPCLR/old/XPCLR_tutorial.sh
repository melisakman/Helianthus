#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/bin/
#SBATCH -J XPCLR
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/tutorial.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/tutorial.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
./XPCLR -xpclr CEU.9 YRI.9 9.xpclr.b36.snp xpclr.9 -w1 0.005 200 2000 1 -p0 0.95