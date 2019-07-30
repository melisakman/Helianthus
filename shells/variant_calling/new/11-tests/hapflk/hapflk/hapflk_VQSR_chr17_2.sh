#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr17_2
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr17_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 17 --from 10000001 --to 20000000 -p chr17_2 --ncpu 12 -K 15