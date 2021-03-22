#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J ancestry
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/aDNA_ancestry_dataStructure.out
#SBATCH -e /global/home/users/makman/H12/outs/aDNA_ancestry_dataStructure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load python/2.7 

python /global/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py chr01_SNP.vcf /global/scratch/makman/GATK/final/ancestry/chr01_ancestry_dataStructure.txt
