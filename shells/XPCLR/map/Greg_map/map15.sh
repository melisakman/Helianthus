#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/map
#SBATCH -J map_chr15
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_chr15.out
#SBATCH -e /global/home/users/makman/H12/outs/map_chr15.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cat ../../GATK/bcftools_isec/final/chr15_final_lessStringentInvariants.vcf | perl vcf2cmpositions.pl HanXRQr1.0-20151230.bp_to_cM.280x801.extradivisions_columnsFixed.txt > chr15_formap.vcf
