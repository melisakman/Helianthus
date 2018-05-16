#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J coverage
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/coverage.out
#SBATCH -e /global/home/users/makman/GATK/outs/coverage.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
-T DepthOfCoverage -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-o ../../coverage_haplotype/coverage -I bams.list