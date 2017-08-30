#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/ancestry/
#SBATCH -J vcffreq
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=2000
#SBATCH --time=5:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/vcftools_freq.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/vcftools_freq.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load vcftools/0.1.13

vcftools --gzvcf /clusterfs/vector/scratch/makman/Hubnerdata/XRQ.fil.01.vcf.ok.vcf --freq --keep /global/scratch/makman/HubnerData/vcf/new_filtering/vcf/wd_list.txt --out chr1_wild_freq

