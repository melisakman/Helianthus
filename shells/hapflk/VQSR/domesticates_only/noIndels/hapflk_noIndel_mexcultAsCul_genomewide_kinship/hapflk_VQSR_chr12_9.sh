#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr12_9
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr12_9_noIndel.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr12_final_plink_noIndels_domesticates_ethno --outgroup=Wild --kinship kinship/all_noIndels/all_tree_kinship_fij.txt --miss_pheno 0 --chr 12 --from 160000001 --to 180000000 -p hapflk_domesticates/noIndels/chr12_9 --ncpu 12 -K 15