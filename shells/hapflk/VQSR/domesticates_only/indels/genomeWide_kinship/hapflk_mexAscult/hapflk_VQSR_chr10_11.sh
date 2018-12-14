#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr10_11
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr10_11_Indel_mexascult.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr10_final_plink_domesticates_ethno_mexAscult --outgroup=Wild --kinship kinship/indel_mexcult_as_cult/all_tree_kinship_fij.txt --miss_pheno 0 --chr 10 --from 200000001 --to 220000000 -p hapflk_domesticates/Indels_mexascult/chr10_11 --ncpu 12 -K 15