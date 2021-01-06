#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J markdu84
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=43:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/mark_dups84.out
#SBATCH -e /global/home/users/makman/GATK/outs/mark_dups84.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann1238_lane2_62_5M_sorted.bam OUTPUT=ann1238_lane2_62_5M_markdup.bam METRICS_FILE=metrics_ann1238_lane2_62_5M_sorted.txt
