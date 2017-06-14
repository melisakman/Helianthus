#!/bin/bash 
#SBATCH -D /global/scratch/makman/HubnerData/vcf/
#SBATCH -J vcfsweep
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MAF_filter.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MAF_filter.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-15

module load vcftools/0.1.13
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr01.10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr04.10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out wd_TajD_chr17.10kb
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr01.10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr04.10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out lr_TajD_chr17.10kb
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr01.10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr04.10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out wd_pi_chr17.10kb
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr01.10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr04.10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out lr_pi_chr17.10kb
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr01.10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr04.10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt.vcf.gz --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8  --weir-fst-pop wd_list.txt --weir-fst-pop lr_list.txt --fst-window-size 10000 --out lr_wd_Fst_chr17.10kb