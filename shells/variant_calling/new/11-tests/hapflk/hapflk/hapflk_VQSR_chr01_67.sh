#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr01_67
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01_67.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 66000001 --to 67000000 -p chr01_67 --ncpu 24 -K 15