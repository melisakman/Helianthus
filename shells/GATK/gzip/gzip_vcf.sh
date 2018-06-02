#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J zip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip VCMA_chr01.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VCMA_chr01.vcf > VCMA_chr01.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p VCMA_chr01.vcf.gz