#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr12_17
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr12_17.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr12_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 12 --from 80000001 --to 85000000 -p chr12_17 --ncpu 18 -K 15