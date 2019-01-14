#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SF2
#SBATCH -J sf_chr12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr12.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


./SweepFinder2 -lrg 10000 variant/chr12_variants.SF variant/all_spectFile.txt /clusterfs/rosalind/users/makman/XPCLR/map/chr12_variants_recRate.txt variant/chr12_variants_rec_output.txt