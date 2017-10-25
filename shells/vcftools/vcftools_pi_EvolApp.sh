#!/bin/bash 
#SBATCH -D /global/scratch/makman/EvolApp_paper/
#SBATCH -J vcfpi
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_EvolApp_pi.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_EvolApp_pi.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-10

module load vcftools/0.1.13
vcftools --vcf Plastome_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --site-pi --out wd_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --site-pi --out lr_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep ethno_list.txt --max-missing 0.8 --site-pi --out ethno_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep archeo_list.txt --max-missing 0.8 --site-pi --out archeo_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep cv_list.txt --max-missing 0.8 --site-pi --out cv_pi_cp
vcftools --vcf Mito_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --site-pi --out wd_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --site-pi --out lr_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep ethno_list.txt --max-missing 0.8 --site-pi --out ethno_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep archeo_list.txt --max-missing 0.8 --site-pi --out archeo_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --minQ 50 --minDP 3 --maxDP 25 --keep cv_list.txt --max-missing 0.8 --site-pi --out cv_pi_mt
