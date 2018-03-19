#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/merged_Nov2017/
#SBATCH -J vcf2genotype
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2genotype.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2genotype.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


gunzip chr01.vcf.gz
gunzip chr02.vcf.gz
gunzip chr03.vcf.gz
gunzip chr04.vcf.gz
gunzip chr05.vcf.gz
gunzip chr06.vcf.gz
gunzip chr07.vcf.gz
gunzip chr08.vcf.gz
gunzip chr09.vcf.gz
gunzip chr10.vcf.gz
gunzip chr11.vcf.gz
gunzip chr12.vcf.gz
gunzip chr13.vcf.gz
gunzip chr14.vcf.gz
gunzip chr15.vcf.gz
gunzip chr16.vcf.gz
gunzip chr17.vcf.gz

python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr01.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr01_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr02.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr02_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr03.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr03_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr04.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr04_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr05.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr05_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr06.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr06_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr07.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr07_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr08.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr08_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr09.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr09_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr10.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr10_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr11.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr11_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr12.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr12_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr13.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr13_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr14.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr14_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr15.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr15_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr16.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr16_G12_input.txt
python /clusterfs/vector/scratch/makman/H12/G12/vcf2genotype.py chr17.vcf /clusterfs/vector/scratch/makman/H12/G12/lr_cv_G12_samples.txt /clusterfs/vector/scratch/makman/H12/G12/chr17_G12_input.txt
