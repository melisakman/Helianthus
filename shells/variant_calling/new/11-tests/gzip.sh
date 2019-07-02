#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfTajD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/gzip.out
#SBATCH -e /global/home/users/makman/vcftools/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
gzip *.vcf