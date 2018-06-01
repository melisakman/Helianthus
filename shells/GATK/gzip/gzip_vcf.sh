#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J zip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip VCMA_GATK_chr01.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_GATK_chr01.vcf > VCMA_GATK_chr01.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p VCMA_GATK_chr01.vcf.gz