#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr06
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr06.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
module load numpy/1.13.3

# python LASSI_iterator.py initial 06 15 lassi_output_wd_chr06 chr,_SNP_wd_lassi_mlg.txt wd wd_headfile.txt 117 12 yes
# 
# python LASSI_iterator.py rescan 06 20 lassi_output_wd_chr06 chr,_SNP_wd_lassi_mlg.txt wd wd_headfile.txt 117 12 yes


python LASSI_iterator.py neutavg 06 20 lassi_output_wd_chr06 chr,_SNP_wd_lassi_mlg.txt wd 117931

python LASSI_iterator.py MLcalc 06 20 lassi_output_wd_chr06 chr,_SNP_wd_lassi_mlg.txt wd 3
