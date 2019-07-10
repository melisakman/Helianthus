#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr01_2
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=18 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
hapflk --file chr01_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 10000001 --to 20000000 -p chr01_2 --ncpu 18 -K 15