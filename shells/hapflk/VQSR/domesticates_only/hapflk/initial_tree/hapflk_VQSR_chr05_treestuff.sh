#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr05_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr05_kinship.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr05_final_plink_domesticates_ethno --outgroup=Wild -p kinship/chr05_tree_kinship --ncpu 12 