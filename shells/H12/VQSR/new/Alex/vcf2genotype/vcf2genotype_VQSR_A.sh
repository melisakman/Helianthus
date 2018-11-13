#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J G12-A
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=6:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VQSR_A.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VQSR_A.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr01_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr01_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr02_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr02_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr03_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr03_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr04_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr04_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr05_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr05_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr06_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr06_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr07_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr07_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr08_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr08_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr09_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr09_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr10_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr10_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr11_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr11_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr12_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr12_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr13_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr13_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr14_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr14_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr15_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr15_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr16_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr16_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr17_final_lessStringentInvariants.vcf lr_cv_list.txt G12/chr17_G12_input.txt
