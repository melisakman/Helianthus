#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/lassi
#SBATCH -J laschr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/lassi_prep_chr01_lrcv.out
#SBATCH -e /global/home/users/makman/H12/outs/lassi_prep_chr01_lrcv.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /global/home/users/makman/git/shells/Helianthus/variant_calling/new/11-tests/lassi/vcf2genotype_lassi.py ../chr01_SNP.vcf ../cv_lr_list.txt chr01_SNP_cv_lr_lassi.txt  
