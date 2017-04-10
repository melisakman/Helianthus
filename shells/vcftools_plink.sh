#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/ordered/
#SBATCH -J vcf2Plink
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/H12/outs/vcftools_plink.out
#SBATCH -e /global/home/users/makman/H12/outs/vcftools_plink.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load vcftools/0.1.13
vcftools --vcf ./XRQ_fil_ordered_combined.vcf --plink --chr 1 --out plink/XRQ_Chr01_plink.txt