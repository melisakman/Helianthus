#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr17_10
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_10.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr17_10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr17_final_plink_fixed --miss_pheno 0 --chr 17 --from 180000001 --to 200000000 -p chr17_10 --ncpu 12 -K 15