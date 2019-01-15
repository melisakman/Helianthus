#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastqcv
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_cv1.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_cv1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


zcat SRR5140327*_1.fastq.gz

zcat SRR5140327*_1.fastq.gz > ready/RHA857_R1.fastq
zcat SRR5140347*_1.fastq.gz > ready/HA404_R1.fastq
zcat SRR5140348*_1.fastq.gz > ready/VIR847_R1.fastq
zcat SRR5140350*_1.fastq.gz > ready/HA433_R1.fastq
zcat SRR5140355*_1.fastq.gz > ready/RHA426_R1.fastq
zcat SRR5140357*_1.fastq.gz > ready/RHA328_R1.fastq
zcat SRR5140364*_1.fastq.gz > ready/RHA271_R1.fastq
zcat SRR5140371*_1.fastq.gz > ready/HA89_R1.fastq
zcat SRR5140372*_1.fastq.gz > ready/RHA408_R1.fastq
# zcat SRR5140377*_1.fastq.gz > ready/HA316_R1.fastq
# zcat SRR5140383*_1.fastq.gz > ready/HA124_R1.fastq
# zcat SRR5140386*_1.fastq.gz > ready/RHA309_R1.fastq
# zcat SRR5140387*_1.fastq.gz > ready/HA442_R1.fastq
# zcat SRR5140391*_1.fastq.gz > ready/RHA355_R1.fastq

gzip ready/RHA857_R1.fastq
gzip ready/HA404_R1.fastq
gzip ready/VIR847_R1.fastq
gzip ready/HA433_R1.fastq
gzip ready/RHA426_R1.fastq
gzip ready/RHA328_R1.fastq
gzip ready/RHA271_R1.fastq
gzip ready/HA89_R1.fastq
gzip ready/RHA408_R1.fastq
# gzip ready/HA316_R1.fastq
# gzip ready/HA124_R1.fastq
# gzip ready/RHA309_R1.fastq
# gzip ready/HA442_R1.fastq
# gzip ready/RHA355_R1.fastq


