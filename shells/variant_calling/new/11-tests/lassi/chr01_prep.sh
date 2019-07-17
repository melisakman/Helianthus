#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J lassi
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr01.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python vcf2ssx.py ../vcfgz/chr01_final.vcf.gz yes no 
