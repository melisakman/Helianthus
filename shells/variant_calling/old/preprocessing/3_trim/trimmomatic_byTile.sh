#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/bbmap
#SBATCH -J trimTile
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim_byTile.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim_byTile.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load fastqc/0.11.5 

# ./filterbytile.sh in1=../annIA1W-1_R1_trimmed_fastq.gz in2=../annIA1W-1_R2_trimmed_fastq.gz out1=../annIA1W-1_R1_trimmed_byTile.fastq.gz out2=../annIA1W-1_R2_trimmed_byTile.fastq.gz

./filterbytile.sh in1=../annIA1W-1_R1_trimmed_fastq.gz in2=../annIA1W-1_R2_trimmed_fastq.gz out1=../annIA1W-1_R1_trimmed_byTile_agg.fastq.gz out2=../annIA1W-1_R2_trimmed_byTile_agg.fastq.gz ud=0.75 qd=1 ed=1 ua=.5 qa=.5 ea=.5
fastqc ../annIA1W-1_R1_trimmed_byTile_agg.fastq.gz
fastqc ../annIA1W-1_R2_trimmed_byTile_agg.fastq.gz


