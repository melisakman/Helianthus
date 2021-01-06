#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J G12-D
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype_VCMA_D.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype_VCMA_D.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7


# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr01_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr01_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr02_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr02_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr03_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr03_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr04_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr04_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr05_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr05_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr06_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr06_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr07_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr07_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr08_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr08_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr09_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr09_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr10_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr10_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr11_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr11_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr12_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr12_variantsOnly_G12_input.txt
# python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr13_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr13_variantsOnly_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr14_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr14_variantsOnly_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr15_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr15_variantsOnly_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr16_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr16_variantsOnly_G12_input.txt
python /clusterfs/rosalind/users/makman/G12/vcf2genotype.py G12/chr17_intersect_variantsOnly.vcf G12/lr_cv_samples.txt G12/VCMA_chr17_variantsOnly_G12_input.txt
