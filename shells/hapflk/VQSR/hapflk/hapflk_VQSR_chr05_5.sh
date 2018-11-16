#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr05_5
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_5.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_5.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr05_final_plink_fixed --miss_pheno 0 --chr 05 --from 80000001 --to 100000000 -p chr05_5 --ncpu 12 -K 15