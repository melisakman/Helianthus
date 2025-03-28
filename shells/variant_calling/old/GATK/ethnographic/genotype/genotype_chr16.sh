#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs/gvcf
#SBATCH -J gntyp16M
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=48000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr16_ethno.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr16_ethno.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx48G" GenotypeGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V combined_chr16_ethno.g.vcf.gz \
-O VC_MA_chr16_ethno.vcf.gz