#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/bin
#SBATCH -J XPCLR_deneme
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/deneme.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/deneme.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
./XPCLR -xpclr ../helianthus/wd_genotype_Chr01_1000.txt ../helianthus/lr_genotype_Chr01_1000.txt ../helianthus/map_1000.txt ../helianthus/Sariel_map/wd_lr_Chr01_xpclr_1000.txt -w1 0.005 200 2000 1 -p0 0.95
