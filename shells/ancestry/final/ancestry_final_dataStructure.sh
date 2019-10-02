#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J ancestry
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/ancestry_dataStructure.out
#SBATCH -e /global/home/users/makman/H12/outs/ancestry_dataStructure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load python
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr01_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr01_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr02_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr02_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr03_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr03_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr04_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr04_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr05_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr05_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr06_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr06_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr07_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr07_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr08_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr08_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr09_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr09_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr10_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr10_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr11_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr11_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr12_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr12_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr13_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr13_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr14_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr14_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr15_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr15_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr16_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr16_ancestry_dataStructure.txt
python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr17_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr17_ancestry_dataStructure.txt

