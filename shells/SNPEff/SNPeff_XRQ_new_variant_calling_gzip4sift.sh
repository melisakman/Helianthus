#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=84000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_VC_gzip.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_VC_gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

cat /clusterfs/vector/scratch/makman/snpEff/vcf/HanXRQ_filtered_ordered_newVC_snpeff.vcf | gzip > HanXRQ_filtered_ordered_newVC_snpeff.vcf.gz