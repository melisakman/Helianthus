#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr01.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python
module load numpy
python LASSI_iterator.py initial 01 20 lassi_output_lr chr,_SNP_lr_lassi_mlg.txt lr lr_headfile.txt 101 10 yes