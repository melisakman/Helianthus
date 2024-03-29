#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr01_26
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01_26.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=18:00:00
module load hapflk/1.4
hapflk --file chr01_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 125000001 --to 130000000 -p chr01_26 --ncpu 11 -K 15