#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr01_cv_lr.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr01_cv_lr.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
module load numpy/1.13.3

# python LASSI_iterator.py initial 01 15 lassi_output_cv_lr_chr01 chr,_SNP_cv_lr_lassi_mlg.txt lr_cv cv_lr_headfile.txt 117 12 yes
# 
# python LASSI_iterator.py rescan 01 20 lassi_output_cv_lr_chr01 chr,_SNP_cv_lr_lassi_mlg.txt lr_cv cv_lr_headfile.txt 117 12 yes


python LASSI_iterator.py neutavg 01 20 lassi_output_cv_lr_chr01 chr,_SNP_cv_lr_lassi_mlg.txt lr_cv 135877

python LASSI_iterator.py MLcalc 01 20 lassi_output_cv_lr_chr01 chr,_SNP_cv_lr_lassi_mlg.txt lr_cv 3
