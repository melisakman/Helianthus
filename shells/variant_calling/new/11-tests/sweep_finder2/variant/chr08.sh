#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J sf_chr08
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr08.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr08.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


/clusterfs/rosalind/users/makman/SF2/SweepFinder2 -lg 10000 sweep_finder/chr08_SNP.SF sweep_finder/all_spectFile.txt sweep_finder/chr08_SNP_output.txt
