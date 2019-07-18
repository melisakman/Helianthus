#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr13
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr13_lrcv.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr13_lrcv.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/shells/Helianthus/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr13_SNP.vcf ../cv_lr_list.txt chr13_SNP_cv_lr_lassi.txt  
