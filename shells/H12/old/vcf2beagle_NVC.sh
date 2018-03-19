#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/H12/
#SBATCH -J vcf2beagle
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcf2beagle_NVC.out
#SBATCH -e /global/home/users/makman/H12/outs/vcf2beagle_NVC.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
cat /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf | java -jar ./vcf2beagle.jar missing beagle_NVC