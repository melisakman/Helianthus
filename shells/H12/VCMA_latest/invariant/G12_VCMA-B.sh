#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/G12/
#SBATCH -J G12_B
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VCMA-B.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VCMA-B.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module unload python/3.5
module unload python/3.5-consultsw
module unload python/3.6
module load python/2.7.14
module load numpy/1.13.3

# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr01_G12_input.txt 46 -o chr01_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr02_G12_input.txt 46 -o chr02_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr03_G12_input.txt 46 -o chr03_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr04_G12_input.txt 46 -o chr04_G12_VCMA_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr05_G12_input.txt 46 -o chr05_G12_VCMA_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr06_G12_input.txt 46 -o chr06_G12_VCMA_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr07_G12_input.txt 46 -o chr07_G12_VCMA_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr08_G12_input.txt 46 -o chr08_G12_VCMA_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr09_G12_input.txt 46 -o chr09_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr10_G12_input.txt 46 -o chr10_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr11_G12_input.txt 46 -o chr11_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr12_G12_input.txt 46 -o chr12_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr13_G12_input.txt 46 -o chr13_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr14_G12_input.txt 46 -o chr14_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr15_G12_input.txt 46 -o chr15_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr16_G12_input.txt 46 -o chr16_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr17_G12_input.txt 46 -o chr17_G12_VCMA_output.txt
# 
