#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J copy
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=172:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/copy.out
#SBATCH -e /global/home/users/makman/GATK/outs/copy.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cp /clusterfs/rosalind/users/makman/GATK/sams/HA433* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/HA442* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/HA8* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/Ha* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/Hi* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/Ho* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/L* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/M* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/P* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/R* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/S* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/V* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/Z* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/ann0* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/ann2* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/ann3* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/ann4* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annI* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annK* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annM* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annN* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annS* /global/scratch/makman/GATK/sams/
cp /clusterfs/rosalind/users/makman/GATK/sams/annW* /global/scratch/makman/GATK/sams/


