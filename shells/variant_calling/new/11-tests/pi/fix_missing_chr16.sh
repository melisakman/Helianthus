#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfpi
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/fix_pi_chr16.out
#SBATCH -e /global/home/users/makman/vcftools/outs/fix_pi_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



# gunzip chr16_final.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/11-tests/pi/fix_missing_pi.py chr16_final.vcf chr16_final_fixed_forPi.vcf
# 
# rm chr16_final.vcf
# 
# vcftools --vcf chr16_final_fixed_forPi.vcf --keep wd_list.txt --site-pi --exclude-bed Repeats_chr16.bed --out pi/wd_pi_chr16_sitePi
# vcftools --vcf chr16_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --exclude-bed Repeats_chr16.bed --out pi/lr_pi_chr16_sitePi
vcftools --vcf chr16_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --max-missing-count 16 --out pi/lr_pi_chr16_sitePi_withTEs
