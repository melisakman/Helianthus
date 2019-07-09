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
#SBATCH -o /global/home/users/makman/vcftools/outs/fix_pi_chr05.out
#SBATCH -e /global/home/users/makman/vcftools/outs/fix_pi_chr05.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15



gunzip chr05_final.vcf.gz

python ~/git/Helianthus/shells/variant_calling/new/11-tests/pi/fix_missing_pi.py chr05_final.vcf chr05_final_fixed_forPi.vcf

rm chr05_final.vcf

vcftools --vcf chr05_final_fixed_forPi.vcf --keep wd_list.txt --site-pi --exclude-bed Repeats_chr05.bed --out pi/wd_pi_chr05_sitePi
vcftools --vcf chr05_final_fixed_forPi.vcf --keep lr_list.txt --site-pi --exclude-bed Repeats_chr05.bed --out pi/lr_pi_chr05_sitePi
