#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J G12-D
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=2
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_xrqv2_D.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_xrqv2_D.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

gunzip chr14_final.vcf.gz
gunzip chr15_final.vcf.gz
gunzip chr16_final.vcf.gz
gunzip chr17_final.vcf.gz

# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr01_final.vcf lr_list.txt G12/Nandita/chr01_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr02_final.vcf lr_list.txt G12/Nandita/chr02_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr03_final.vcf lr_list.txt G12/Nandita/chr03_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr04_final.vcf lr_list.txt G12/Nandita/chr04_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr05_final.vcf lr_list.txt G12/Nandita/chr05_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr06_final.vcf lr_list.txt G12/Nandita/chr06_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr07_final.vcf lr_list.txt G12/Nandita/chr07_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr08_final.vcf lr_list.txt G12/Nandita/chr08_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr09_final.vcf lr_list.txt G12/Nandita/chr09_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr10_final.vcf lr_list.txt G12/Nandita/chr10_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr11_final.vcf lr_list.txt G12/Nandita/chr11_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr12_final.vcf lr_list.txt G12/Nandita/chr12_G12_input_lrOnly.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr13_final.vcf lr_list.txt G12/Nandita/chr13_G12_input_lrOnly.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr14_final.vcf lr_list.txt G12/Nandita/chr14_G12_input_lrOnly.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr15_final.vcf lr_list.txt G12/Nandita/chr15_G12_input_lrOnly.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr16_final.vcf lr_list.txt G12/Nandita/chr16_G12_input_lrOnly.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype_Nandita_updated.py chr17_final.vcf lr_list.txt G12/Nandita/chr17_G12_input_lrOnly.txt
