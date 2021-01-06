#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J samsort61
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=28:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort61.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort61.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java
module load samtools/1.8

sleep 3600

java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx96G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann1238_lane2_125M.sam OUTPUT=ann1238_lane2_125M_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx96G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann1238_lane2_125M_sorted.bam OUTPUT=ann1238_lane2_125M_sorted_markdup.bam METRICS_FILE=metrics_ann1238_lane2_125M_sorted.txt
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx96G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann1238_lane2_125M_sorted_markdup.bam O=ann1238_lane2_125M_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann1238 RGID=ann1238
samtools index ann1238_lane2_125M_sorted_markdup_readGroup.bam ann1238_lane2_125M_sorted_markdup_readGroup.bai
