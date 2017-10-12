#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/ancestry/
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=18000
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_compute.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_compute.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load python

./infocalc -column 2 -input ./results/dataStructure/HanXRQChr01_ancestry_dataStructure.txt -output ./results/compute/chr01_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr02_ancestry_dataStructure.txt -output ./results/compute/chr02_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr03_ancestry_dataStructure.txt -output ./results/compute/chr03_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr04_ancestry_dataStructure.txt -output ./results/compute/chr04_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr05_ancestry_dataStructure.txt -output ./results/compute/chr05_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr06_ancestry_dataStructure.txt -output ./results/compute/chr06_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr07_ancestry_dataStructure.txt -output ./results/compute/chr07_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr08_ancestry_dataStructure.txt -output ./results/compute/chr08_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr09_ancestry_dataStructure.txt -output ./results/compute/chr09_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr10_ancestry_dataStructure.txt -output ./results/compute/chr10_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr11_ancestry_dataStructure.txt -output ./results/compute/chr11_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr12_ancestry_dataStructure.txt -output ./results/compute/chr12_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr13_ancestry_dataStructure.txt -output ./results/compute/chr13_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr14_ancestry_dataStructure.txt -output ./results/compute/chr14_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr15_ancestry_dataStructure.txt -output ./results/compute/chr15_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr16_ancestry_dataStructure.txt -output ./results/compute/chr16_ancestry_txt
./infocalc -column 2 -input ./results/dataStructure/HanXRQChr17_ancestry_dataStructure.txt -output ./results/compute/chr17_ancestry_txt
