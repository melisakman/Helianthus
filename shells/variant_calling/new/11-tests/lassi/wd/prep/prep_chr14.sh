#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr14
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr14.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr14.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr14_SNP.vcf ../wd_list.txt chr14_SNP_wd_lassi.txt  
