#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/WGCNA_Ara/
#SBATCH -J WGCNA
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=128000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/WGCNA/WGCNA_power.out
#SBATCH -e /global/home/users/makman/WGCNA/WGCNA_power.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load r/3.4.2
R

install.packages("WGCNA")

library(WGCNA)
enableWGCNAThreads()
lnames = load(file = "Arab_dataInput.RData")
lnames
# Choose a set of soft-thresholding powers
powers = c(c(1:10), seq(from = 12, to=20, by=2))
# Call the network topology analysis function
sft = pickSoftThreshold(datArab, powerVector = powers, verbose = 5)
sft 
