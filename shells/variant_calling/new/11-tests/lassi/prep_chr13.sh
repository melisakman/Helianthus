#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr13
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr13.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/shells/Helianthus/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr13_SNP.vcf ../lr_list.txt chr13_SNP_lr_lassi.txt  
