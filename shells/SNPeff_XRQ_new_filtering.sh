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
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_filtering.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_new_filtering.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -Xmx8g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -stats /clusterfs/vector/scratch/makman/snpEff/results/combined_XRQ_new_filtering_stats.html XRQ /global/scratch/makman/HubnerData/vcf/new_filtering/vcf/XRQ_combined_new_filtering.vcf.gz > /clusterfs/vector/scratch/makman/snpEff/XRQ_combined_new_filtering_snpeff.vcf.gz
