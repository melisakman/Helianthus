#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/G12/VCMA_ethno
#SBATCH -J G12_VCMA
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VCMA_ethno.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VCMA_ethno.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module unload python/3.5
module unload python/3.5-consultsw
module unload python/3.6
module load python/2.7.14
module load numpy/1.13.3

python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr01_G12_input.txt 40 -o chr01_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr02_G12_input.txt 40 -o chr02_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr03_G12_input.txt 40 -o chr03_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr04_G12_input.txt 40 -o chr04_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr05_G12_input.txt 40 -o chr05_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr06_G12_input.txt 40 -o chr06_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr07_G12_input.txt 40 -o chr07_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr08_G12_input.txt 40 -o chr08_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr09_G12_input.txt 40 -o chr09_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr10_G12_input.txt 40 -o chr10_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr11_G12_input.txt 40 -o chr11_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr12_G12_input.txt 40 -o chr12_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr13_G12_input.txt 40 -o chr13_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr14_G12_input.txt 40 -o chr14_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr15_G12_input.txt 40 -o chr15_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr16_G12_input.txt 40 -o chr16_G12_VCMA_ethno_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_ethno_chr17_G12_input.txt 40 -o chr17_G12_VCMA_ethno_output.txt
