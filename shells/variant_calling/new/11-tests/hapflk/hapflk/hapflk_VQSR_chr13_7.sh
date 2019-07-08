#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J hfchr13_7
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr13_7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr13_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 13 --from 120000001 --to 140000000 -p chr13_7 --ncpu 12 -K 15