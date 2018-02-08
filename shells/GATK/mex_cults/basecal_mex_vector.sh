#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J basecal_vec
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=64000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/basecalmex_vector.out
#SBATCH -e /global/home/users/makman/GATK/outs/basecalmex_vector.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools
module load java

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mex_A1516_sorted_markdup.bam O=Mex_A1516_sorted_markdup_readGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1516
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mex_A1517_sorted_markdup.bam O=Mex_A1517_sorted_markdup_readGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1517
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mex_A1572_sorted_markdup.bam O=Mex_A1572_sorted_markdup_readGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1572
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mex_A1574_sorted_markdup.bam O=Mex_A1574_sorted_markdup_readGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1574
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mex_Ann261_sorted_markdup.bam O=Mex_Ann261_sorted_markdup_readGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_Ann261


# samtools index Mex_A1516_sorted_markdup_readGroups.bam Mex_A1516_sorted_markdup_readGroups.bai
samtools index Mex_A1517_sorted_markdup_readGroups.bam Mex_A1517_sorted_markdup_readGroups.bai
samtools index Mex_A1572_sorted_markdup_readGroups.bam Mex_A1572_sorted_markdup_readGroups.bai
samtools index Mex_A1574_sorted_markdup_readGroups.bam Mex_A1574_sorted_markdup_readGroups.bai
samtools index Mex_Ann261_sorted_markdup_readGroups.bam Mex_Ann261_sorted_markdup_readGroups.bai

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1516_sorted_markdup_readGroups.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1516_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1517_sorted_markdup_readGroups.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1517_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1572_sorted_markdup_readGroups.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1572_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1574_sorted_markdup_readGroups.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1574_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_Ann261_sorted_markdup_readGroups.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_Ann261_dedup.table 
# 


java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1516_sorted_markdup_readGroups.bam -BQSR Mex_A1516_dedup.table -o Mex_A1516_sorted_markdup_readGroups_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1517_sorted_markdup_readGroups.bam -BQSR Mex_A1517_dedup.table -o Mex_A1517_sorted_markdup_readGroups_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1572_sorted_markdup_readGroups.bam -BQSR Mex_A1572_dedup.table -o Mex_A1572_sorted_markdup_readGroups_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1574_sorted_markdup_readGroups.bam -BQSR Mex_A1574_dedup.table -o Mex_A1574_sorted_markdup_readGroups_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_Ann261_sorted_markdup_readGroups.bam -BQSR Mex_Ann261_dedup.table -o Mex_Ann261_sorted_markdup_readGroups_recal.bam
