#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr05_36
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_36.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr05_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 05 --from 175000001 --to 180000000 -p chr05_36 --ncpu 18 -K 15