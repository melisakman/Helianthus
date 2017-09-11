#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_VC.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_VC.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -Xmx8g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -stats /clusterfs/vector/scratch/makman/snpEff/results/HanXRQ_new_VC_stats.html XRQ /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf > /clusterfs/vector/scratch/makman/snpEff/vcf/HanXRQ_filtered_ordered_newVC_snpeff.vcf
