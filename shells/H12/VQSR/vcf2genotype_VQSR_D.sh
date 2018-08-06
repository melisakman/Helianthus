#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G6_90
#SBATCH -J G12-D
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=6:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VQSR_D.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

# gunzip chr01_final.vcf.gz
# gunzip chr02_final.vcf.gz
# gunzip chr03_final.vcf.gz
# gunzip chr04_final.vcf.gz
# gunzip chr05_final.vcf.gz
# gunzip chr06_final.vcf.gz
# gunzip chr07_final.vcf.gz
# gunzip chr08_final.vcf.gz
# gunzip chr09_final.vcf.gz
# gunzip chr10_final.vcf.gz
# gunzip chr11_final.vcf.gz
# gunzip chr12_final.vcf.gz
# gunzip chr13_final.vcf.gz
gunzip chr14_final.vcf.gz
gunzip chr15_final.vcf.gz
gunzip chr16_final.vcf.gz
gunzip chr17_final.vcf.gz




# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr01_final.vcf /lr_cv_list.txt G12/VQSR_chr01_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr02_final.vcf /lr_cv_list.txt G12/VQSR_chr02_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr03_final.vcf /lr_cv_list.txt G12/VQSR_chr03_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr04_final.vcf /lr_cv_list.txt G12/VQSR_chr04_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr05_final.vcf /lr_cv_list.txt G12/VQSR_chr05_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr06_final.vcf /lr_cv_list.txt G12/VQSR_chr06_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr07_final.vcf /lr_cv_list.txt G12/VQSR_chr07_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr08_final.vcf /lr_cv_list.txt G12/VQSR_chr08_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr09_final.vcf /lr_cv_list.txt G12/VQSR_chr09_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr10_final.vcf /lr_cv_list.txt G12/VQSR_chr10_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr11_final.vcf /lr_cv_list.txt G12/VQSR_chr11_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr12_final.vcf /lr_cv_list.txt G12/VQSR_chr12_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr13_final.vcf /lr_cv_list.txt G12/VQSR_chr13_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr14_final.vcf /lr_cv_list.txt G12/VQSR_chr14_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr15_final.vcf /lr_cv_list.txt G12/VQSR_chr15_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr16_final.vcf /lr_cv_list.txt G12/VQSR_chr16_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Alex.py chr17_final.vcf /lr_cv_list.txt G12/VQSR_chr17_G12_input.txt
