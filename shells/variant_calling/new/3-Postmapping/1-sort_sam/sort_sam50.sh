#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J samsort50
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort50.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort50.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA_207.sam OUTPUT=HA_207_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA_259.sam OUTPUT=HA_259_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA_314.sam OUTPUT=HA_314_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA_323.sam OUTPUT=HA_323_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA_380.sam OUTPUT=HA_380_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA_310.sam OUTPUT=RHA_310_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA_324.sam OUTPUT=RHA_324_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA_354.sam OUTPUT=RHA_354_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA_362.sam OUTPUT=RHA_362_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA_397.sam OUTPUT=RHA_397_sorted.bam SORT_ORDER=coordinate 

