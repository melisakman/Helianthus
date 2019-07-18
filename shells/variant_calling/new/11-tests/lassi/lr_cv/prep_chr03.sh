#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr03
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr03_lrcv.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr03_lrcv.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/shells/Helianthus/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr03_SNP.vcf ../cv_lr_list.txt chr03_SNP_cv_lr_lassi.txt  
