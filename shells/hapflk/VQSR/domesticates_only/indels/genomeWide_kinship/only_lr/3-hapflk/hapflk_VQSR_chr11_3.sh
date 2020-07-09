#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J chr11_3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr11_3_lrOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr11_final_plink_lrOnly --outgroup=Wild --kinship kinship/lrOnly/lrOnly_tree_kinship_fij.txt --miss_pheno 0 --chr 11 --from 40000001 --to 60000000 -p hapflk_domesticates/lrOnly/chr11_3 --ncpu 12 -K 15