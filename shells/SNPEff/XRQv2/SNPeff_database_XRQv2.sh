#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J snpEff
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_database_XRQv2.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_database_XRQv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -jar snpEff/snpEff.jar build -gff3 -v XRQv2
