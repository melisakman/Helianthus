#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J sf_chr11
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr11.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr11.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


/clusterfs/rosalind/users/makman/SF2/SweepFinder2 -lg 10000 sweep_finder/chr11_SNP_wd.SF sweep_finder/all_spectFile_wd.txt sweep_finder/chr11_SNP_wd_output.txt
