#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr16
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 1 --to 5000000 -p chr16_1 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 5000001 --to 10000000 -p chr16_2 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 10000001 --to 15000000 -p chr16_3 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 15000001 --to 20000000 -p chr16_4 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 20000001 --to 25000000 -p chr16_5 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 25000001 --to 30000000 -p chr16_6 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 30000001 --to 35000000 -p chr16_7 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 35000001 --to 40000000 -p chr16_8 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 40000001 --to 45000000 -p chr16_9 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 45000001 --to 50000000 -p chr16_10 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 50000001 --to 55000000 -p chr16_11 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 55000001 --to 60000000 -p chr16_12 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 60000001 --to 65000000 -p chr16_13 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 65000001 --to 70000000 -p chr16_14 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 70000001 --to 75000000 -p chr16_15 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 75000001 --to 80000000 -p chr16_16 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 80000001 --to 85000000 -p chr16_17 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 85000001 --to 90000000 -p chr16_18 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 90000001 --to 95000000 -p chr16_19 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 95000001 --to 100000000 -p chr16_20 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 100000001 --to 105000000 -p chr16_21 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 105000001 --to 110000000 -p chr16_22 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 110000001 --to 115000000 -p chr16_23 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 115000001 --to 120000000 -p chr16_24 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 120000001 --to 125000000 -p chr16_25 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 125000001 --to 130000000 -p chr16_26 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 130000001 --to 135000000 -p chr16_27 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 135000001 --to 140000000 -p chr16_28 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 140000001 --to 145000000 -p chr16_29 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 145000001 --to 150000000 -p chr16_30 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 150000001 --to 155000000 -p chr16_31 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 155000001 --to 160000000 -p chr16_32 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 160000001 --to 165000000 -p chr16_33 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 165000001 --to 170000000 -p chr16_34 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 170000001 --to 175000000 -p chr16_35 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 175000001 --to 180000000 -p chr16_36 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 180000001 --to 185000000 -p chr16_37 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 185000001 --to 190000000 -p chr16_38 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 190000001 --to 195000000 -p chr16_39 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 195000001 --to 200000000 -p chr16_40 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 200000001 --to 205000000 -p chr16_41 --ncpu 51 -K 15
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 205000001 --to 210000000 -p chr16_42 --ncpu 51 -K 15
