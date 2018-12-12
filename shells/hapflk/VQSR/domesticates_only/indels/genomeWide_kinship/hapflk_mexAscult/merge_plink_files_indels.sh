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

plink --file chr01_final_plink_domesticates_ethno_mexAscult --merge-list plink_merge_list_mexascult.txt --recode --out all_final_plink_domesticates_ethno_mexAscult

hapflk --file all_final_plink_domesticates_ethno_mexAscult --outgroup=Wild --miss_pheno 0 -p kinship/indel_mexcult_as_cult/all_tree_kinship --ncpu 12 


##!!!!! this one includes mexcult 7 and 14 as cult