#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ethno
#SBATCH -J Se_purp
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Se_purp.out
#SBATCH -e /global/home/users/makman/GATK/outs/Se_purp.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6



java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_1.fq.gz Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_2.fq.gz Se_purp_R1_trimmed_fastq.gz Se_purp_R1_unpaired.fastq.gz Se_purp_R2_trimmed_fastq.gz Se_purp_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Se_purp_R1_trimmed.fastq.gz Se_purp_R2_trimmed.fastq.gz > Se_purp.sam

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Se_purp.sam OUTPUT=Se_purp_sorted.bam SORT_ORDER=coordinate 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Se_purp_sorted.bam OUTPUT=Se_purp_sorted_markdup.bam METRICS_FILE=metrics_Se_purp.txt

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Se_purp_sorted_markdup.bam O=Se_purp_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se_purp

samtools index Se_purp_sorted_markdup_readGroup.bam Se_purp_sorted_markdup_readGroup.bai

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Se_purp_sorted_markdup_readGroup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Se_purp_dedup.table 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Se_purp_sorted_markdup_readGroup.bam -BQSR Se_purp_dedup.table -o Se_purp_sorted_markdup_recal.bam

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Se_purp_sorted_markdup_recal.bam -O Se_purp.g.vcf.gz -ERC GVCF
