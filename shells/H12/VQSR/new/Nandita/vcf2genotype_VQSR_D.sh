#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J G12-D
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=8000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr01_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr01_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr02_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr02_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr03_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr03_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr04_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr04_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr05_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr05_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr06_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr06_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr07_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr07_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr08_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr08_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr09_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr09_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr10_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr10_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr11_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr11_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr12_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr12_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr13_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr13_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr14_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr14_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr15_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr15_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr16_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr16_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py chr17_final_lessStringentInvariants.vcf lr_cv_list.txt G12/Nandita/chr17_G12_input.txt
