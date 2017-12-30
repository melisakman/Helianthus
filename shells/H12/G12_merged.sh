#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/H12/G12
#SBATCH -J G12
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_merged.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_merged.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr01_G12_input.txt 40 -o chr01_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr02_G12_input.txt 40 -o chr02_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr03_G12_input.txt 40 -o chr03_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr04_G12_input.txt 40 -o chr04_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr05_G12_input.txt 40 -o chr05_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr06_G12_input.txt 40 -o chr06_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr07_G12_input.txt 40 -o chr07_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr08_G12_input.txt 40 -o chr08_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr09_G12_input.txt 40 -o chr09_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr10_G12_input.txt 40 -o chr10_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr11_G12_input.txt 40 -o chr11_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr12_G12_input.txt 40 -o chr12_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr13_G12_input.txt 40 -o chr13_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr14_G12_input.txt 40 -o chr14_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr15_G12_input.txt 40 -o chr15_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr16_G12_input.txt 40 -o chr16_G12_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py chr17_G12_input.txt 40 -o chr17_G12_output.txt

