#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J samsort49
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort49.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort49.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA207.sam OUTPUT=HA207_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA259.sam OUTPUT=HA259_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA314.sam OUTPUT=HA314_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA323.sam OUTPUT=HA323_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA380.sam OUTPUT=HA380_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA310.sam OUTPUT=RHA310_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA324.sam OUTPUT=RHA324_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA354.sam OUTPUT=RHA354_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA362.sam OUTPUT=RHA362_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA397.sam OUTPUT=RHA397_sorted.bam SORT_ORDER=coordinate 

