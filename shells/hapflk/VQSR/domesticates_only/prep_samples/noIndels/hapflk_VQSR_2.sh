#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk/VQSR/
#SBATCH -J hfchr021
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --cpus-per-task=20
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_VQSR_chr02.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python /global/home/users/makman/git/Helianthus/shells/hapflk/VQSR/extract_variantsOnly.py /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr02_final_lessStringentInvariants.vcf /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf
# 
# sed 's/HanXRQChr//g' /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf > chr02_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf

module load bio/vcftools/0.1.15

vcftools --vcf chr02_final_lessStringentInvariants_onlyvariants_noHanXRQ.vcf --remove-indels --out chr02_final_plink_noIndels --plink

python ../plink_ped_fixer.py ../samples_VQSR_domesticates_ethno.txt chr02_final_plink_noIndels.ped chr02_final_plink_noIndels_domesticates_ethno.ped

cp chr02_final_plink_noIndels.map chr02_final_plink_noIndels_domesticates_ethno.map

# module load hapflk/1.4
# 
# hapflk --file chr02_final_plink_noIndels_domesticates_ethno --miss_pheno 0 --chr 01 --from 1 --to 20000000 -p chr02_1 --ncpu 12 -K 15
