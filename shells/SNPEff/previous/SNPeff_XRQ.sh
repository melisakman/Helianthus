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
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -Xmx8g -jar ./snpEff.jar -stats ./results/combined_XRQ_stats.html XRQ ./vcf/XRQ_fil_ordered_combined.vcf.gz > ./results/XRQ_fil_ordered_combined_snpeff.vcf.gz
