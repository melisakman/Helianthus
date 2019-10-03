#!/bin/bash 
#SBATCH -D /global/scratch/makman/ancestry/
#SBATCH -J ancestry
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=72:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_compute.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_compute.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load python

./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr01_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr01_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr02_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr02_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr03_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr03_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr04_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr04_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr05_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr05_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr06_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr06_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr07_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr07_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr08_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr08_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr09_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr09_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr10_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr10_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr11_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr11_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr12_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr12_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr13_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr13_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr14_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr14_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr15_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr15_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr16_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr16_ancestry.txt
./infocalc -column 2 -input /global/scratch/makman/GATK/final/ancestry/chr17_ancestry_dataStructure.txt -output /global/scratch/makman/GATK/final/ancestry/output/chr17_ancestry.txt
