#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/XPCLR/
#SBATCH -J map_chr03
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --cpus-per-task=3
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_chr03.out
#SBATCH -e /global/home/users/makman/H12/outs/map_chr03.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cat chr03_final_lessStringentInvariants.vcf | perl vcf2cmpositions.pl HanXRQr1.0-20151230.bp_to_cM.280x801.extradivisions_columnsFixed.txt > chr03_formap.vcf
