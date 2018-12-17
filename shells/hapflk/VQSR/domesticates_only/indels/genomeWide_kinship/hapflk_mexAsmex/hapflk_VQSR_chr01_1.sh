#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr01_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=2
#SBATCH --time=600:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr01_1_Indel_mexasmex.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
# hapflk --file chr01_final_plink_domesticates_ethno --outgroup=Wild --kinship kinship/all/all_tree_kinship_fij.txt --miss_pheno 0 --chr 01 --from 1 --to 20000000 -p hapflk_domesticates/Indels_mexAsmex/chr01_1 --ncpu 12 -K 15

##some tests
hapflk --file chr01_final_plink_domesticates_ethno --outgroup=Wild --kinship kinship/all/all_tree_kinship_fij.txt --miss_pheno 0 --chr 01 --from 1 --to 20000000 -p hapflk_domesticates/Indels_mexAsmex/chr01_1_K6 --ncpu 40 -K 6

hapflk --file chr01_final_plink_domesticates_ethno --outgroup=Wild --kinship kinship/all/all_tree_kinship_fij.txt --miss_pheno 0 --chr 01 --from 1 --to 20000000 -p hapflk_domesticates/Indels_mexAsmex/chr01_1_K8 --ncpu 40 -K 8