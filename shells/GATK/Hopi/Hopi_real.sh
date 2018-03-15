#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J run
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=96000
#SBATCH --ntasks-per-node=1
#SBATCH --time=60:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Hopi_real_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/Hopi_real_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6


# 
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.0206.004.Index_8.Hopi_R1.fastq.gz HI.0206.004.Index_8.Hopi_R2.fastq.gz Hopi_real_R1_trimmed.fastq.gz Hopi_real_R1_unpaired.fastq.gz Hopi_real_R2_trimmed.fastq.gz Hopi_real_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# gunzip Hopi_real_R1_trimmed.fastq.gz
# gunzip Hopi_real_R2_trimmed.fastq.gz
# python ready/trimmed/remove_pair_info.py Hopi_real_R1_trimmed.fastq Hopi_real_R1_trimmed_fixed.fastq
# python ready/trimmed/remove_pair_info.py Hopi_real_R1_trimmed.fastq Hopi_real_R2_trimmed_fixed.fastq
# gzip Hopi_real_R1_trimmed_fixed.fastq
# gzip Hopi_real_R2_trimmed_fixed.fastq
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Hopi_real_R1_trimmed_fixed.fastq.gz Hopi_real_R2_trimmed_fixed.fastq.gz > Hopi_real.sam
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Hopi_real.sam OUTPUT=Hopi_real_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx96G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Hopi_real_sorted.bam OUTPUT=Hopi_real_sorted_markdup.bam METRICS_FILE=metrics_Hopi_real.txt
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx96G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Hopi_real_sorted_markdup.bam O=Hopi_real_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_real
samtools index Hopi_real_sorted_markdup_readGroup.bam Hopi_real_sorted_markdup_readGroup.bai
mv ready/sams/Hopi_real_dedup.table ./
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_real_sorted_markdup_readGroup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Hopi_real_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_real_sorted_markdup_readGroup.bam -BQSR Hopi_real_dedup.table -o Hopi_real_sorted_markdup_recal.bam
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_real_sorted_markdup_recal.bam -O Hopi_real.g.vcf.gz -ERC GVCF









