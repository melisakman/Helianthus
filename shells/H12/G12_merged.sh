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
#SBATCH -o /global/home/users/makman/H12/outs/G12_filtered_merged.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_filtered_merged.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load numpy/1.11.0
module load python

python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr01_G12_input.txt 40 -o chr01_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr02_G12_input.txt 40 -o chr02_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr03_G12_input.txt 40 -o chr03_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr04_G12_input.txt 40 -o chr04_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr05_G12_input.txt 40 -o chr05_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr06_G12_input.txt 40 -o chr06_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr07_G12_input.txt 40 -o chr07_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr08_G12_input.txt 40 -o chr08_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr09_G12_input.txt 40 -o chr09_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr10_G12_input.txt 40 -o chr10_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr11_G12_input.txt 40 -o chr11_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr12_G12_input.txt 40 -o chr12_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr13_G12_input.txt 40 -o chr13_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr14_G12_input.txt 40 -o chr14_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr15_G12_input.txt 40 -o chr15_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr16_G12_input.txt 40 -o chr16_G12_merged_output.txt
python /clusterfs/vector/scratch/makman/H12/SelectionHapStats/scripts/H12_H2H1.py merged_NVC_filtered_dups_removed_chr17_G12_input.txt 40 -o chr17_G12_merged_output.txt

