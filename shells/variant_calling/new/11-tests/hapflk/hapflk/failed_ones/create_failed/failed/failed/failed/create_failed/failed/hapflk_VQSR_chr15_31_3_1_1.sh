#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr15_31_3_1_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr15_31_3_1_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=6:00:00
module load hapflk/1.4
hapflk --file chr15_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 15 --from 153750001 --to 154000000 -p chr15_31_3_1_1 --ncpu 4 -K 15