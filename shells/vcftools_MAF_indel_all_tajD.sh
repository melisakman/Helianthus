#!/bin/bash 
#SBATCH -D /global/scratch/makman/HubnerData/vcf/new_filtering/vcf/
#SBATCH -J vcfTajD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MAF_indel_all_tajd.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MAF_indel_all_tajd.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-34

module load vcftools/0.1.13
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr01_10kb
vcftools --gzvcf HanXRQChr02_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr02_10kb
vcftools --gzvcf HanXRQChr03_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr03_10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr04_10kb
vcftools --gzvcf HanXRQChr05_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr05_10kb
vcftools --gzvcf HanXRQChr06_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr16_10kb
vcftools --gzvcf HanXRQChr07_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr07_10kb
vcftools --gzvcf HanXRQChr08_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr08_10kb
vcftools --gzvcf HanXRQChr09_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr09_10kb
vcftools --gzvcf HanXRQChr10_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr10_10kb
vcftools --gzvcf HanXRQChr11_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr11_10kb
vcftools --gzvcf HanXRQChr12_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr12_10kb
vcftools --gzvcf HanXRQChr13_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr13_10kb
vcftools --gzvcf HanXRQChr14_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr14_10kb
vcftools --gzvcf HanXRQChr15_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr15_10kb
vcftools --gzvcf HanXRQChr16_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr16_10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/wd/MAF_indel_wd_TajD_chr17_10kb
vcftools --gzvcf HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr01_10kb
vcftools --gzvcf HanXRQChr02_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr02_10kb
vcftools --gzvcf HanXRQChr03_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr03_10kb
vcftools --gzvcf HanXRQChr04_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr04_10kb
vcftools --gzvcf HanXRQChr05_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr05_10kb
vcftools --gzvcf HanXRQChr06_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr06_10kb
vcftools --gzvcf HanXRQChr07_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr07_10kb
vcftools --gzvcf HanXRQChr08_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr08_10kb
vcftools --gzvcf HanXRQChr09_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr09_10kb
vcftools --gzvcf HanXRQChr10_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr10_10kb
vcftools --gzvcf HanXRQChr11_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr11_10kb
vcftools --gzvcf HanXRQChr12_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr12_10kb
vcftools --gzvcf HanXRQChr13_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr13_10kb
vcftools --gzvcf HanXRQChr14_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr14_10kb
vcftools --gzvcf HanXRQChr15_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr15_10kb
vcftools --gzvcf HanXRQChr16_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr16_10kb
vcftools --gzvcf HanXRQChr17_complete_ordered_norm_maf_filt_indel_in.vcf.gz --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --TajimaD 10000  --out ../TajD/lr/MAF_indel_lr_TajD_chr17_10kb
