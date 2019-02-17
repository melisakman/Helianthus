#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J samsort59
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=170:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort59.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort59.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx128G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann1238_lane2_62_5M.sam OUTPUT=ann1238_lane2_62_5M_sorted.bam SORT_ORDER=coordinate 
