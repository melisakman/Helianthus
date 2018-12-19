#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J G12-D
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=2
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr01_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr01_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr02_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr02_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr03_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr03_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr04_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr04_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr05_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr05_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr06_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr06_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr07_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr07_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr08_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr08_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr09_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr09_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr10_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr10_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr11_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr11_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr12_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr12_G12_input_updated.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr13_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr13_G12_input_updated.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr14_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr14_G12_input_updated.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr15_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr15_G12_input_updated.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr16_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr16_G12_input_updated.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr17_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/updated/chr17_G12_input_updated.txt
