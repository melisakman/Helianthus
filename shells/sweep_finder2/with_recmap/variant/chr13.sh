#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SF2
#SBATCH -J sf_chr13
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr13.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


./SweepFinder2 -lrg 10000 variant/chr13_variants.SF variant/all_spectFile.txt /clusterfs/rosalind/users/makman/XPCLR/map/chr13_variants_recRate.txt variant/chr13_variants_rec_output.txt
