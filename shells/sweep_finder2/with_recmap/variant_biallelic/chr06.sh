#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SF2
#SBATCH -J sf_chr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sf2chr06.out
#SBATCH -e /global/home/users/makman/H12/outs/sf2chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


./SweepFinder2 -lg 10000 variant_biallelic/chr06_variants_biallelic.SF variant_biallelic/all_spectFile.txt variant_biallelic/chr06_variants_biallelic_output.txt
