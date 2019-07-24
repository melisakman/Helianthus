#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr07
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr07.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr07.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
module load numpy/1.13.3

python LASSI_iterator.py initial 07 15 lassi_output_lr chr,_SNP_lr_lassi_mlg.txt lr lr_headfile.txt 117 12 yes

python LASSI_iterator.py rescan 07 20 lassi_output_lr chr,_SNP_lr_lassi_mlg.txt lr lr_headfile.txt 117 12 yes


# python LASSI_iterator.py neutavg 07 20 lassi_output_lr chr,_SNP_lr_lassi_mlg.txt lr 135414
# 
# python LASSI_iterator.py MLcalc 07 20 lassi_output_lr chr,_SNP_lr_lassi_mlg.txt lr 3
