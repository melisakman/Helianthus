#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr17
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr17.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr17.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python vcf2ssx.py ../vcfgz/chr17_final.vcf.gz yes no 
