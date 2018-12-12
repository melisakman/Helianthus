#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J kinship
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_all_noIndels_kinship.err
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_all_noIndels_kinship.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=600:00:00
module load hapflk/1.4
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/


module load bio/vcftools/0.1.15

# vcftools --vcf chr01_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf --out chr01_final_plink  --plink
# 
# python ../plink_ped_fixer.py ../samples_VQSR_domesticates_ethno.txt chr01_final_plink.ped chr01_final_plink_noIndels_domesticates_ethno.ped

# cp chr01_final_plink.map chr01_final_plink_noIndels_domesticates_ethno.map

#the files created above are merged with plink and then ran on hapflk

module load plink

plink --file chr01_final_plink_noIndels_domesticates_ethno --merge-list plink_merge_list_noIndels.txt --out all_final_plink_merged_noIndels

hapflk --file all_final_plink_merged_noIndels --outgroup=Wild --miss_pheno 0 -p kinship/all_noIndels/all_tree_kinship --ncpu 20 