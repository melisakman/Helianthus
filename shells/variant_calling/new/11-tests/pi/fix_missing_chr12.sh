#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfpi
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/fix_pi_chr12.out
#SBATCH -e /global/home/users/makman/vcftools/outs/fix_pi_chr12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



# gunzip chr12_final.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/11-tests/pi/fix_missing_pi.py chr12_final.vcf chr12_final_fixed_forPi.vcf
# 
# rm chr12_final.vcf
# 
# vcftools --vcf chr12_final_fixed_forPi.vcf --keep wd_list.txt --site-pi --exclude-bed Repeats_chr12.bed --out pi/wd_pi_chr12_sitePi
# vcftools --vcf chr12_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --exclude-bed Repeats_chr12.bed --out pi/lr_pi_chr12_sitePi
vcftools --vcf chr12_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --max-missing-count 14 --out pi/lr_pi_chr12_sitePi_withTEs
