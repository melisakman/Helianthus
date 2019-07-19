#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr11
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr11.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr11.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr11_SNP.vcf ../lr_list.txt chr11_SNP_lr_lassi.txt  
