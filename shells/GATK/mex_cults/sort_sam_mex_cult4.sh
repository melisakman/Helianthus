#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J sortmex4
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=360:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort_mexcult4.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort_mexcult4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/picard/2.9.0 

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx48G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Mex_A1516.sam OUTPUT=Mex_A1516_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx48G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Mex_A1517.sam OUTPUT=Mex_A1517_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Mex_A1572.sam OUTPUT=Mex_A1572_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Mex_A1574.sam OUTPUT=Mex_A1574_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx72G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar SortSam INPUT=Mex_Ann261.sam OUTPUT=Mex_Ann261_sorted.bam SORT_ORDER=coordinate 


# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Mex_A1516_sorted.bam OUTPUT=Mex_A1516_sorted_markdup.bam METRICS_FILE=metrics_Mex_A1516.txt
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Mex_A1517_sorted.bam OUTPUT=Mex_A1517_sorted_markdup.bam METRICS_FILE=metrics_Mex_A1517.txt
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Mex_A1572_sorted.bam OUTPUT=Mex_A1572_sorted_markdup.bam METRICS_FILE=metrics_Mex_A1572.txt
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Mex_A1574_sorted.bam OUTPUT=Mex_A1574_sorted_markdup.bam METRICS_FILE=metrics_Mex_A1574.txt
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar MarkDuplicates INPUT=Mex_Ann261_sorted.bam OUTPUT=Mex_Ann261_sorted_markdup.bam METRICS_FILE=metrics_Mex_Ann261.txt
