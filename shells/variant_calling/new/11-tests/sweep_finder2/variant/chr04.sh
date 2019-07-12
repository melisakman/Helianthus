#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J sf_chr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr04.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr04.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


/clusterfs/rosalind/users/makman/SF2/SweepFinder2 -lg 10000 sweep_finder/chr04_SNP.SF sweep_finder/all_spectFile.txt sweep_finder/chr04_SNP_output.txt
