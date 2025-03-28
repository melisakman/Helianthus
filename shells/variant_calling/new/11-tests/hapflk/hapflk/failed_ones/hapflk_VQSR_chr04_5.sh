#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr04_5
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr04_5.err
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr04_5.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=10:00:00
module load hapflk/1.4
hapflk --file chr04_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 04 --from 20000001 --to 25000000 -p chr04_5 --ncpu 11 -K 15