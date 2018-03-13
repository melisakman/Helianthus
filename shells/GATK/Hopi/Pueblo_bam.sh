#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J run
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=60:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Pueblo_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/Pueblo_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6



zcat HI.1253.007.Index_1.PI432516_R1.fastq.gz HI.1253.006.Index_1.PI432516_R1.fastq.gz HI.1253.005.Index_1.PI432516_R1.fastq.gz > ready/Pueblo_R1.fastq.gz
zcat HI.1253.007.Index_1.PI432516_R2.fastq.gz HI.1253.006.Index_1.PI432516_R2.fastq.gz HI.1253.005.Index_1.PI432516_R2.fastq.gz > ready/Pueblo_R2.fastq.gz
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Pueblo_R1.fastq.gz Pueblo_R2.fastq.gz Pueblo_R1_trimmed_fastq.gz Pueblo_R1_unpaired.fastq.gz Pueblo_R2_trimmed_fastq.gz Pueblo_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Pueblo_R1_trimmed.fastq.gz Pueblo_R2_trimmed.fastq.gz > Pueblo.sam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Pueblo.sam OUTPUT=Pueblo_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Pueblo_sorted.bam OUTPUT=Pueblo_sorted_markdup.bam METRICS_FILE=metrics_Pueblo.txt
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Pueblo_sorted_markdup.bam O=Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Pueblo
samtools index Pueblo_sorted_markdup_readGroup.bam Pueblo_sorted_markdup_readGroup.bai
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Pueblo_sorted_markdup_readGroup.bam -BQSR Pueblo_dedup.table -o Pueblo_sorted_markdup_recal.bam
