#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/XPCLR/
#SBATCH -J map_chr04
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --cpus-per-task=3
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_chr04.out
#SBATCH -e /global/home/users/makman/H12/outs/map_chr04.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cat chr04_final_lessStringentInvariants.vcf | perl vcf2cmpositions.pl HanXRQr1.0-20151230.bp_to_cM.280x801.extradivisions_columnsFixed.txt > chr04_formap.vcf
