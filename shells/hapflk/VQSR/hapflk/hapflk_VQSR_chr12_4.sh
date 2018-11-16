#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr12_4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr12_4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr12_final_plink_fixed --miss_pheno 0 --chr 12 --from 60000001 --to 80000000 -p chr12_4 --ncpu 12 -K 15