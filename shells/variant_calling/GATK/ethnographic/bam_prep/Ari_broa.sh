#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ethno
#SBATCH -J Ari_broa
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Ari_broa.out
#SBATCH -e /global/home/users/makman/GATK/outs/Ari_broa.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6



# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_1.fq.gz Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_2.fq.gz Ari_broa_R1_trimmed.fastq.gz Ari_broa_R1_unpaired.fastq.gz Ari_broa_R2_trimmed.fastq.gz Ari_broa_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Ari_broa_R1_trimmed.fastq.gz Ari_broa_R2_trimmed.fastq.gz > Ari_broa.sam

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Ari_broa.sam OUTPUT=Ari_broa_sorted.bam SORT_ORDER=coordinate 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Ari_broa_sorted.bam OUTPUT=Ari_broa_sorted_markdup.bam METRICS_FILE=metrics_Ari_broa.txt

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Ari_broa_sorted_markdup.bam O=Ari_broa_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Ari_broa

samtools index Ari_broa_sorted_markdup_readGroup.bam Ari_broa_sorted_markdup_readGroup.bai

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Ari_broa_sorted_markdup_readGroup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Ari_broa_dedup.table 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Ari_broa_sorted_markdup_readGroup.bam -BQSR Ari_broa_dedup.table -o Ari_broa_sorted_markdup_recal.bam

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Ari_broa_sorted_markdup_recal.bam -O Ari_broa.g.vcf.gz -ERC GVCF
