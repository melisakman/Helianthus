#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr02_35
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr02_35.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr02_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 02 --from 170000001 --to 174800439 -p chr02_35 --ncpu 12 -K 15