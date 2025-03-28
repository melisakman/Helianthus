#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr161
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr16.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python /global/home/users/makman/git/Helianthus/shells/hapflk/VQSR/extract_variantsOnly.py /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr16_final_lessStringentInvariants.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf
# 
# sed 's/HanXRQChr//g' /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf > chr16_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf

module load bio/vcftools/0.1.15

vcftools --vcf chr16_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf --out chr16_final_plink  --plink

# python ../plink_ped_fixer.py ../samples_VQSR_domesticates_ethno.txt chr16_final_plink.ped chr16_final_plink_domesticates_ethno.ped
# 
# cp chr16_final_plink.map chr16_final_plink_domesticates_ethno.map

