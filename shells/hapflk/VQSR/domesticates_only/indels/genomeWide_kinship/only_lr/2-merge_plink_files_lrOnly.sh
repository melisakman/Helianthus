#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J kinship
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_all_kinship.err
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_all_kinship.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/



module load plink

plink --file chr01_final_plink_lrOnly --merge-list plink_merge_list_lrOnly.txt --recode --out lrOnly_final_plink

hapflk --file lrOnly_final_plink --outgroup=Wild --miss_pheno 0 -p kinship/lrOnly/lrOnly_tree_kinship --ncpu 12 


#this indludes ethno mex cult (excluding 7 and 14) and other landraces

# chr02_final_plink_lrOnly.ped chr02_final_plink_lrOnly.map
# chr03_final_plink_lrOnly.ped chr03_final_plink_lrOnly.map
# chr04_final_plink_lrOnly.ped chr04_final_plink_lrOnly.map
# chr05_final_plink_lrOnly.ped chr05_final_plink_lrOnly.map
# chr06_final_plink_lrOnly.ped chr06_final_plink_lrOnly.map
# chr07_final_plink_lrOnly.ped chr07_final_plink_lrOnly.map
# chr08_final_plink_lrOnly.ped chr08_final_plink_lrOnly.map
# chr09_final_plink_lrOnly.ped chr09_final_plink_lrOnly.map
# chr10_final_plink_lrOnly.ped chr10_final_plink_lrOnly.map
# chr11_final_plink_lrOnly.ped chr11_final_plink_lrOnly.map
# chr12_final_plink_lrOnly.ped chr12_final_plink_lrOnly.map
# chr13_final_plink_lrOnly.ped chr13_final_plink_lrOnly.map
# chr14_final_plink_lrOnly.ped chr14_final_plink_lrOnly.map
# chr15_final_plink_lrOnly.ped chr15_final_plink_lrOnly.map
# chr16_final_plink_lrOnly.ped chr16_final_plink_lrOnly.map
# chr17_final_plink_lrOnly.ped chr17_final_plink_lrOnly.map
