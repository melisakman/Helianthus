#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/bcftools_isec/secondFilter/
#SBATCH -J G12-A
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VCMA_A.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VCMA_A.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

gunzip G12/chr01_intersect.vcf.gz
gunzip G12/chr02_intersect.vcf.gz
gunzip G12/chr03_intersect.vcf.gz
gunzip G12/chr04_intersect.vcf.gz
# gunzip G12/chr05_intersect.vcf.gz
# gunzip G12/chr06_intersect.vcf.gz
# gunzip G12/chr07_intersect.vcf.gz
# gunzip G12/chr08_intersect.vcf.gz
# gunzip G12/chr09_intersect.vcf.gz
# gunzip G12/chr10_intersect.vcf.gz
# gunzip G12/chr11_intersect.vcf.gz
# gunzip G12/chr12_intersect.vcf.gz
# gunzip G12/chr13_intersect.vcf.gz
# gunzip G12/chr14_intersect.vcf.gz
# gunzip G12/chr15_intersect.vcf.gz
# gunzip G12/chr16_intersect.vcf.gz
# gunzip G12/chr17_intersect.vcf.gz
# 



python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr01_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr01_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr02_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr02_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr03_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr03_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr04_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr04_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr05_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr05_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr06_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr06_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr07_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr07_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr08_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr08_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr09_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr09_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr10_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr10_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr11_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr11_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr12_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr12_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr13_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr13_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr14_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr14_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr15_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr15_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr16_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr16_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr17_intersect.vcf G12/lr_cv_samples.txt G12/VCMA_chr17_G12_input.txt
