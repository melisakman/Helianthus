#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr16_21
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr16_21.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr16_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 16 --from 200000001 --to 210000000 -p chr16_21 --ncpu 12 -K 15