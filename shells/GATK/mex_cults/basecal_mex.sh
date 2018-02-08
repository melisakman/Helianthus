#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J basecal
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=128000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/basecalmex.out
#SBATCH -e /global/home/users/makman/GATK/outs/basecalmex.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools

samtools index Mex_A1516_sorted_markdup.bam Mex_A1516_sorted_markdup.bai
samtools index Mex_A1517_sorted_markdup.bam Mex_A1517_sorted_markdup.bai
samtools index Mex_A1572_sorted_markdup.bam Mex_A1572_sorted_markdup.bai
samtools index Mex_A1574_sorted_markdup.bam Mex_A1574_sorted_markdup.bai
samtools index Mex_Ann261_sorted_markdup.bam Mex_Ann261_sorted_markdup.bai

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1516_sorted_markdup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1516_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1517_sorted_markdup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1517_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1572_sorted_markdup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1572_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1574_sorted_markdup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_A1574_dedup.table 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T BaseRecalibrator -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_Ann261_sorted_markdup.bam -L HanXRQChr01 -knownSites /clusterfs/rosalind/users/makman/merged_NVC.vcf -o Mex_Ann261_dedup.table 



java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1516_sorted_markdup.bam -BQSR Mex_A1516_dedup.table -o Mex_A1516_sorted_markdup_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1517_sorted_markdup.bam -BQSR Mex_A1517_dedup.table -o Mex_A1517_sorted_markdup_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1572_sorted_markdup.bam -BQSR Mex_A1572_dedup.table -o Mex_A1572_sorted_markdup_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1574_sorted_markdup.bam -BQSR Mex_A1574_dedup.table -o Mex_A1574_sorted_markdup_recal.bam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_Ann261_sorted_markdup.bam -BQSR Mex_Ann261_dedup.table -o Mex_Ann261_sorted_markdup_recal.bam
