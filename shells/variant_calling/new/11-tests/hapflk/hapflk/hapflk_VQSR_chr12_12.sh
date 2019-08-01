#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr12_12
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr12_12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=10:00:00
module load hapflk/1.4
hapflk --file chr12_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 12 --from 55000001 --to 60000000 -p chr12_12 --ncpu 8 -K 15