#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr05_29
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_29.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr05_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 05 --from 140000001 --to 145000000 -p chr05_29 --ncpu 11 -K 15