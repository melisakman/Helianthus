#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr06_19
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr06_19.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=48:00:00
module load hapflk/1.4
hapflk --file chr06_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 06 --from 90000001 --to 95000000 -p chr06_19 --ncpu 11 -K 15