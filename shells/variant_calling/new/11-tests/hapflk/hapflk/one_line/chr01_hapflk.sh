#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 1 --to 2000000 -p chr01_1 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 2000001 --to 4000000 -p chr01_2 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 4000001 --to 6000000 -p chr01_3 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 6000001 --to 8000000 -p chr01_4 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 8000001 --to 10000000 -p chr01_5 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 10000001 --to 12000000 -p chr01_6 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 12000001 --to 14000000 -p chr01_7 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 14000001 --to 16000000 -p chr01_8 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 16000001 --to 18000000 -p chr01_9 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 18000001 --to 20000000 -p chr01_10 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 20000001 --to 22000000 -p chr01_11 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 22000001 --to 24000000 -p chr01_12 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 24000001 --to 26000000 -p chr01_13 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 26000001 --to 28000000 -p chr01_14 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 28000001 --to 30000000 -p chr01_15 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 30000001 --to 32000000 -p chr01_16 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 32000001 --to 34000000 -p chr01_17 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 34000001 --to 36000000 -p chr01_18 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 36000001 --to 38000000 -p chr01_19 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 38000001 --to 40000000 -p chr01_20 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 40000001 --to 42000000 -p chr01_21 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 42000001 --to 44000000 -p chr01_22 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 44000001 --to 46000000 -p chr01_23 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 46000001 --to 48000000 -p chr01_24 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 48000001 --to 50000000 -p chr01_25 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 50000001 --to 52000000 -p chr01_26 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 52000001 --to 54000000 -p chr01_27 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 54000001 --to 56000000 -p chr01_28 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 56000001 --to 58000000 -p chr01_29 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 58000001 --to 60000000 -p chr01_30 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 60000001 --to 62000000 -p chr01_31 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 62000001 --to 64000000 -p chr01_32 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 64000001 --to 66000000 -p chr01_33 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 66000001 --to 68000000 -p chr01_34 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 68000001 --to 70000000 -p chr01_35 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 70000001 --to 72000000 -p chr01_36 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 72000001 --to 74000000 -p chr01_37 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 74000001 --to 76000000 -p chr01_38 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 76000001 --to 78000000 -p chr01_39 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 78000001 --to 80000000 -p chr01_40 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 80000001 --to 82000000 -p chr01_41 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 82000001 --to 84000000 -p chr01_42 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 84000001 --to 86000000 -p chr01_43 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 86000001 --to 88000000 -p chr01_44 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 88000001 --to 90000000 -p chr01_45 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 90000001 --to 92000000 -p chr01_46 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 92000001 --to 94000000 -p chr01_47 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 94000001 --to 96000000 -p chr01_48 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 96000001 --to 98000000 -p chr01_49 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 98000001 --to 100000000 -p chr01_50 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 100000001 --to 102000000 -p chr01_20 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 102000001 --to 104000000 -p chr01_52 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 104000001 --to 106000000 -p chr01_53 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 106000001 --to 108000000 -p chr01_54 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 108000001 --to 110000000 -p chr01_55 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 110000001 --to 112000000 -p chr01_56 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 112000001 --to 114000000 -p chr01_57 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 114000001 --to 116000000 -p chr01_58 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 116000001 --to 118000000 -p chr01_59 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 118000001 --to 120000000 -p chr01_60 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 120000001 --to 122000000 -p chr01_61 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 122000001 --to 124000000 -p chr01_62 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 124000001 --to 126000000 -p chr01_63 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 126000001 --to 128000000 -p chr01_64 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 128000001 --to 130000000 -p chr01_65 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 130000001 --to 132000000 -p chr01_66 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 132000001 --to 134000000 -p chr01_67 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 134000001 --to 136000000 -p chr01_68 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 136000001 --to 138000000 -p chr01_69 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 138000001 --to 140000000 -p chr01_70 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 140000001 --to 142000000 -p chr01_71 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 142000001 --to 144000000 -p chr01_72 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 144000001 --to 146000000 -p chr01_73 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 146000001 --to 148000000 -p chr01_74 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 148000001 --to 150000000 -p chr01_75 --ncpu 20 -K 15
# hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 150000001 --to 152000000 -p chr01_76 --ncpu 20 -K 15
