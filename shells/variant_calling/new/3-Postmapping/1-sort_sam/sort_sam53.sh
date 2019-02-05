#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J samsort53
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort53.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort53.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann28-swSK.sam OUTPUT=ann28-swSK_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annIA1W-1.sam OUTPUT=annIA1W-1_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annIA2W-17.sam OUTPUT=annIA2W-17_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMB1W-40.sam OUTPUT=annMB1W-40_sorted.bam SORT_ORDER=coordinate 
# 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann1238.sam OUTPUT=ann1238_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annKS2W-35.sam OUTPUT=annKS2W-35_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA821.sam OUTPUT=HA821_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult15.sam OUTPUT=MexCult15_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=SF33.sam OUTPUT=SF33_sorted.bam SORT_ORDER=coordinate 
# 
