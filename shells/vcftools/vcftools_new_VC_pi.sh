#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_pi15_update.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_pi15_update.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17

module load vcftools/0.1.13
# vcftools --gzvcf HanXRQChr01_filter01.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr01_10kb
# vcftools --gzvcf HanXRQChr02_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr02_10kb
# vcftools --gzvcf HanXRQChr03_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr03_10kb
# vcftools --gzvcf HanXRQChr04_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr04_10kb
# vcftools --gzvcf HanXRQChr05_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr05_10kb
# vcftools --gzvcf HanXRQChr06_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr06_10kb
# vcftools --gzvcf HanXRQChr07_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr07_10kb
# vcftools --gzvcf HanXRQChr08_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr08_10kb
# vcftools --gzvcf HanXRQChr09_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr09_10kb
# vcftools --gzvcf HanXRQChr10_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr10_10kb
# vcftools --gzvcf HanXRQChr11_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr11_10kb
# vcftools --gzvcf HanXRQChr12_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr12_10kb
# vcftools --gzvcf HanXRQChr13_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr13_10kb
# vcftools --gzvcf HanXRQChr14_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr14_10kb
# vcftools --gzvcf HanXRQChr15_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr15_10kb
# vcftools --gzvcf HanXRQChr16_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr16_10kb
# vcftools --gzvcf HanXRQChr17_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr17_10kb
vcftools --gzvcf HanXRQChr01_filter01.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr01_10kb
vcftools --gzvcf HanXRQChr02_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr02_10kb
vcftools --gzvcf HanXRQChr03_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr03_10kb
vcftools --gzvcf HanXRQChr04_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr04_10kb
vcftools --gzvcf HanXRQChr05_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr05_10kb
vcftools --gzvcf HanXRQChr06_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr06_10kb
vcftools --gzvcf HanXRQChr07_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr07_10kb
vcftools --gzvcf HanXRQChr08_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr08_10kb
vcftools --gzvcf HanXRQChr09_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr09_10kb
vcftools --gzvcf HanXRQChr10_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr10_10kb
vcftools --gzvcf HanXRQChr11_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr11_10kb
vcftools --gzvcf HanXRQChr12_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr12_10kb
vcftools --gzvcf HanXRQChr13_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr13_10kb
vcftools --gzvcf HanXRQChr14_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr14_10kb
vcftools --gzvcf HanXRQChr15_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr15_10kb
vcftools --gzvcf HanXRQChr16_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr16_10kb
vcftools --gzvcf HanXRQChr17_filter01_ordered.vcf --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr17_10kb
