#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J SNPRelate
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/MA_snpRelate_chr08.out
#SBATCH -e /global/home/users/makman/vcftools/outs/MA_snpRelate_chr08.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load r/3.4.2

Rscript /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/snprelate_chr08.R