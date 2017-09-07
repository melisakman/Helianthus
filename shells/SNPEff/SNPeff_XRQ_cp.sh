#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/results/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_cp.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_cp.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
tail -n 7180421 /clusterfs/vector/scratch/makman/snpEff/results/XRQ_fil_ordered_combined_snpeff.vcf > /clusterfs/vector/scratch/makman/snpEff/results/XRQ_fil_ordered_combined_snpeff_noHeader.vcf