#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr14_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr14_1_Indel_mexasmex.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr14_final_plink_domesticates_ethno --outgroup=Wild --kinship kinship/all/all_tree_kinship_fij.txt --miss_pheno 0 --chr 14 --from 1 --to 20000000 -p hapflk_domesticates/Indels_mexAsmex/chr14_1 --ncpu 12 -K 15