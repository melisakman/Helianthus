#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 1 --to 5000000 -p chr06_1 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 5000001 --to 10000000 -p chr06_2 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 10000001 --to 15000000 -p chr06_3 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 15000001 --to 20000000 -p chr06_4 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 20000001 --to 25000000 -p chr06_5 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 25000001 --to 30000000 -p chr06_6 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 30000001 --to 35000000 -p chr06_7 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 35000001 --to 40000000 -p chr06_8 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 40000001 --to 45000000 -p chr06_9 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 45000001 --to 50000000 -p chr06_10 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 50000001 --to 55000000 -p chr06_11 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 55000001 --to 60000000 -p chr06_12 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 60000001 --to 65000000 -p chr06_13 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 65000001 --to 70000000 -p chr06_14 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 70000001 --to 75000000 -p chr06_15 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 75000001 --to 80000000 -p chr06_16 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 80000001 --to 85000000 -p chr06_17 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 85000001 --to 90000000 -p chr06_18 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 90000001 --to 95000000 -p chr06_19 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 95000001 --to 100000000 -p chr06_20 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 100000001 --to 105000000 -p chr06_21 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 105000001 --to 110000000 -p chr06_22 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 110000001 --to 115000000 -p chr06_23 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 115000001 --to 120000000 -p chr06_24 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 120000001 --to 125000000 -p chr06_25 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 125000001 --to 130000000 -p chr06_26 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 130000001 --to 135000000 -p chr06_27 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 135000001 --to 140000000 -p chr06_28 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 140000001 --to 145000000 -p chr06_29 --ncpu 51 -K 15
hapflk --file chr06_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 145000001 --to 150000000 -p chr06_30 --ncpu 51 -K 15
