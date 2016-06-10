#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/snpEff/results
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_HA412_ch17_separate.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_HA412_ch17_separate.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch17.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom17_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch17_snpEff.ann.vcf
