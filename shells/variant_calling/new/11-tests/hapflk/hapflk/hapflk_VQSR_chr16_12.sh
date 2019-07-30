#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr16_12
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr16_12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr16_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 110000001 --to 120000000 -p chr16_12 --ncpu 12 -K 15