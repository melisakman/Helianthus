#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr141
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr14.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr14.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python /global/home/users/makman/git/Helianthus/shells/hapflk/VQSR/extract_variantsOnly.py /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr14_final_lessStringentInvariants.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf
# 
# sed 's/HanXRQChr//g' /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf > chr14_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf

module load bio/vcftools/0.1.15

# vcftools --vcf chr14_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf --out chr14_final_plink  --plink

python ../plink_ped_fixer.py ../samples_VQSR_lrOnly.txt chr14_final_plink.ped chr14_final_plink_lrOnly.ped

cp chr14_final_plink.map chr14_final_plink_lrOnly.map

