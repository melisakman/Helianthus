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
vcftools --vcf Plastome_for_Pegas_Q30.vcf --keep wd_list.txt --window-pi 10000 --out wd_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --keep lr_list.txt --window-pi 10000 --out lr_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --keep ethno_list.txt --window-pi 10000 --out ethno_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --keep archeo_list.txt --window-pi 10000 --out archeo_pi_cp
vcftools --vcf Plastome_for_Pegas_Q30.vcf --keep cv_list.txt --window-pi 10000 --out cv_pi_cp
vcftools --vcf Mito_for_Pegas_Q30.vcf --keep wd_list.txt --window-pi 10000 --out wd_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --keep lr_list.txt --window-pi 10000 --out lr_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --keep ethno_list.txt --window-pi 10000 --out ethno_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --keep archeo_list.txt --window-pi 10000 --out archeo_pi_mt
vcftools --vcf Mito_for_Pegas_Q30.vcf --keep cv_list.txt --window-pi 10000 --out cv_pi_mt
