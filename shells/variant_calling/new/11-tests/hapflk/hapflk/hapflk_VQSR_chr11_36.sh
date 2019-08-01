#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr11_36
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr11_36.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=10:00:00
module load hapflk/1.4
hapflk --file chr11_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 11 --from 175000001 --to 180000000 -p chr11_36 --ncpu 8 -K 15