#!/bin/bash 
#SBATCH -D /global/scratch/makman/Nathan_vcf/
#SBATCH -J vcfsweep
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/scratch/makman/Nathan_vcf/outs/vcftools_NathanSNPs.out
#SBATCH -e /global/scratch/makman/Nathan_vcf/outs/vcftools_NathanSNPs.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-15

module load vcftools/0.1.13
vcftools --gzvcf Chr01_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr01.10kb
vcftools --gzvcf Chr04_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr04.10kb
vcftools --gzvcf Chr17_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr17.10kb
vcftools --gzvcf Chr01_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr01.10kb
vcftools --gzvcf Chr04_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr04.10kb
vcftools --gzvcf Chr17_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr17.10kb
vcftools --gzvcf Chr01_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr01.10kb
vcftools --gzvcf Chr04_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr04.10kb
vcftools --gzvcf Chr17_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr17.10kb
vcftools --gzvcf Chr01_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr01.10kb
vcftools --gzvcf Chr04_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr04.10kb
vcftools --gzvcf Chr17_SNPs_filtered_recode.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr17.10kb
vcftools --gzvcf Chr01_SNPs_filtered_recode.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr01.10kb
vcftools --gzvcf Chr04_SNPs_filtered_recode.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr04.10kb
vcftools --gzvcf Chr17_SNPs_filtered_recode.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr17.10kb