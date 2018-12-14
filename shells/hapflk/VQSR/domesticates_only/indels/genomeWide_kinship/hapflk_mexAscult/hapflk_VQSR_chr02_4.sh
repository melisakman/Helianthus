#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr02_4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr02_4_Indel_mexascult.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
hapflk --file chr02_final_plink_domesticates_ethno_mexAscult --outgroup=Wild --kinship kinship/indel_mexcult_as_cult/all_tree_kinship_fij.txt --miss_pheno 0 --chr 02 --from 60000001 --to 80000000 -p hapflk_domesticates/Indels_mexascult/chr02_4 --ncpu 12 -K 15