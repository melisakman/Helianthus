#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr17_9
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr17_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 17 --from 32000001 --to 36000000 -p chr17_9 --ncpu 12 -K 15