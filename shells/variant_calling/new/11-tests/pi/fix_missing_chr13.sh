#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfpi
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr04_8.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/fix_pi_chr13.out
#SBATCH -e /global/home/users/makman/vcftools/outs/fix_pi_chr13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



gunzip chr13_final.vcf.gz

python ~/git/Helianthus/shells/variant_calling/new/11-tests/pi/fix_missing_pi.py ch01_final.vcf chr13_final_fixed_forPi.vcf

rm chr13_final.vcf

vcftools --vcf chr13_final_fixed_forPi.vcf --keep wd_list.txt --site-pi --exclude-bed Repeats_chr13.bed --out pi/wd_pi_chr13_sitePi
vcftools --vcf chr13_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --exclude-bed Repeats_chr13.bed --out pi/lr_pi_chr13_sitePi
