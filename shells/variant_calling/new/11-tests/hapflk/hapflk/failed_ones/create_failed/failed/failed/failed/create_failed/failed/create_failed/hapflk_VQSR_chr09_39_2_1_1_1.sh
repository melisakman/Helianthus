#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr09_39_2_1_1_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr09_39_2_1_1_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=6:00:00
module load hapflk/1.4
hapflk --file chr09_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 09 --from 192875001 --to 193000000 -p chr09_39_2_1_1_1 --ncpu 4 -K 15