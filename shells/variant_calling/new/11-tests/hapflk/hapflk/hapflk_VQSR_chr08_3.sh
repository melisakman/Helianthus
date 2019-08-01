#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr08_3
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr08_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=10:00:00
module load hapflk/1.4
hapflk --file chr08_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 08 --from 10000001 --to 15000000 -p chr08_3 --ncpu 8 -K 15