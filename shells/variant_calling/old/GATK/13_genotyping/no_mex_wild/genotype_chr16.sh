#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J gntype16
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=48000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr16.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx48G" GenotypeGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V combined_chr16.g.vcf.gz \
-O VC_MA_chr16.vcf.gz