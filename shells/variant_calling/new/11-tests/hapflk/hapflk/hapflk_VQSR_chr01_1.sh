#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr01_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load hapflk/1.4
export TMPDIR=/global/scratch/makman/temp

hapflk --file chr01_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr 01 --from 1 --to 5000000 -p chr01_1 --ncpu 20 -K 15