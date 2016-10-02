#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_coding_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_coding_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -Xmx8g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -stats combined_coding.html /clusterfs/vector/instrumentData/blackmanlab/Helianthus/snpEff/HA412 /clusterfs/vector/instrumentData/blackmanlab/Helianthus/AssociationGenicSNPs/GenicbeagleImputed.vcf > /clusterfs/vector/scratch/makman/snpEff/combined_coding_snpEff.ann.vcf
