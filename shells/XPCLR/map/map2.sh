#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/XPCLR/
#SBATCH -J map_chr02
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --cpus-per-task=3
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_chr02.out
#SBATCH -e /global/home/users/makman/H12/outs/map_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
ssh dtn
cp /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/chr02_final_lessStringentInvariants.vcf ./
exit
cat chr02_final_lessStringentInvariants.vcf | perl vcf2cmpositions.pl HanXRQr1.0-20151230.bp_to_cM.280x801.extradivisions_columnsFixed.txt > chr02_formap.vcf
