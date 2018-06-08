#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/G12/
#SBATCH -J G12_A
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VCMA-A2.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VCMA-A2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module unload python/3.5
module unload python/3.5-consultsw
module unload python/3.6
module load python/2.7.14
module load numpy/1.13.3

python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr01_variantsOnly_G12_input.txt 46 -o chr01_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr02_variantsOnly_G12_input.txt 46 -o chr02_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr03_variantsOnly_G12_input.txt 46 -o chr03_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr04_variantsOnly_G12_input.txt 46 -o chr04_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr05_variantsOnly_G12_input.txt 46 -o chr05_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr06_variantsOnly_G12_input.txt 46 -o chr06_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr07_variantsOnly_G12_input.txt 46 -o chr07_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr08_variantsOnly_G12_input.txt 46 -o chr08_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr09_variantsOnly_G12_input.txt 46 -o chr09_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr10_variantsOnly_G12_input.txt 46 -o chr10_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr11_variantsOnly_G12_input.txt 46 -o chr11_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr12_variantsOnly_G12_input.txt 46 -o chr12_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr13_variantsOnly_G12_input.txt 46 -o chr13_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr14_variantsOnly_G12_input.txt 46 -o chr14_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr15_variantsOnly_G12_input.txt 46 -o chr15_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr16_variantsOnly_G12_input.txt 46 -o chr16_variantsOnly_G12_VCMA_output.txt
# python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py VCMA_chr17_variantsOnly_G12_input.txt 46 -o chr17_variantsOnly_G12_VCMA_output.txt
# 
