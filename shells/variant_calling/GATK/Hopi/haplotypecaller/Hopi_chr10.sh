#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J hapcal10
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=48000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Hopi_real_hapcal10.out
#SBATCH -e /global/home/users/makman/GATK/outs/Hopi_real_hapcal10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx48G" HaplotypeCaller -L HanXRQChr10 -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_real_sorted_markdup_recal.bam -O Hopi_real_chr10.g.vcf.gz -ERC GVCF









