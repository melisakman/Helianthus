#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr05_32_2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_32_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=6:00:00
module load hapflk/1.4
hapflk --file chr05_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 05 --from 157000001 --to 158000000 -p chr05_32_2 --ncpu 6 -K 15