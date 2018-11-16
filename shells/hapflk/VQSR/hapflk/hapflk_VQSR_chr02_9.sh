#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr02_9
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr02_9.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr02_9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr02_final_plink_fixed --miss_pheno 0 --chr 02 --from 160000001 --to 180000000 -p chr02_9 --ncpu 12 -K 15