#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J coverage3
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/coverage3.out
#SBATCH -e /global/home/users/makman/GATK/outs/coverage3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
-T DepthOfCoverage -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-L HanXRQChr03 -o ../../coverage_haplotype/coverage_chr03 -I ./bams.list