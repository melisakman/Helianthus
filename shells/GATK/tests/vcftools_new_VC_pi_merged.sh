#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J vcfpi
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr01 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr01_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr02 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr02_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr03 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr03_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr04 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr04_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr05 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr05_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr06 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr06_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr07 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr07_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr08 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr08_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr09 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr09_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr10 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr10_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr11 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr11_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr12 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr12_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr13 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr13_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr14 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr14_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr15 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr15_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr16 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr16_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr17 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr17_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr01 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr01_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr02 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr02_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr03 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr03_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr04 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr04_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr05 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr05_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr06 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr06_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr07 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr07_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr08 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr08_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr09 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr09_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr10 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr10_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr11 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr11_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr12 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr12_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr13 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr13_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr14 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr14_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr15 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr15_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr16 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr16_10kb
vcftools --vcf VC_MA_combined_all_hardfiltered_filtered.vcf --chr HanXRQChr17 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr17_10kb
