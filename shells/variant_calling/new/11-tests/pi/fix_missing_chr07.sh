#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfpi
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/fix_pi_chr07.out
#SBATCH -e /global/home/users/makman/vcftools/outs/fix_pi_chr07.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



# gunzip chr07_final.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/11-tests/pi/fix_missing_pi.py chr07_final.vcf chr07_final_fixed_forPi.vcf
# 
# rm chr07_final.vcf
# 
# vcftools --vcf chr07_final_fixed_forPi.vcf --keep wd_list.txt --site-pi --exclude-bed Repeats_chr07.bed --out pi/wd_pi_chr07_sitePi
# vcftools --vcf chr07_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --exclude-bed Repeats_chr07.bed --out pi/lr_pi_chr07_sitePi
vcftools --vcf chr07_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --out pi/lr_pi_chr07_sitePi_withTEs
