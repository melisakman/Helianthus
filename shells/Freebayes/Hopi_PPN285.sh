#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/
#SBATCH -J Hopi
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/Hopi_PPN285.out
#SBATCH -e /global/home/users/makman/GATK/outs/Hopi_PPN285.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load java
module load bwa/0.7.17-r1188
module load picard/2.9.0 
module load samtools/1.6

java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HI.0206.004.Index_8.Hopi_R1.fastq.gz HI.0206.004.Index_8.Hopi_R2.fastq.gz Hopi_PPN285_R1_trimmed_fastq.gz Hopi_PPN285_R1_unpaired.fastq.gz Hopi_PPN285_R2_trimmed_fastq.gz Hopi_PPN285_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Hopi_PPN285_R1_trimmed.fastq.gz Hopi_PPN285_R2_trimmed.fastq.gz > Hopi_PPN285.sam
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Hopi_PPN285.sam OUTPUT=Hopi_PPN285_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Hopi_PPN285_sorted.bam OUTPUT=Hopi_PPN285_sorted_markdup.bam METRICS_FILE=metrics_Hopi_PPN285.txt
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Hopi_PPN285_sorted_markdup.bam O=Hopi_PPN285_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_PPN285 RGID=Hopi_PPN285
samtools index Hopi_PPN285_sorted_markdup_readGroup.bam Hopi_PPN285_sorted_markdup_readGroup.bai
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_PPN285_sorted_markdup_readGroup.bam -BQSR ../dedup_table/Hopi_PPN285_dedup.table -o Hopi_PPN285_sorted_markdup_recal.bam

