#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/snpEff/results
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats test.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/ordered/cultivated_filtered_ordered_combined.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/combined_snpEff.ann.vcf
