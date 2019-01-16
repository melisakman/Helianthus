#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastqcv
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_cv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



# zcat SRR5140327*_2.fastq.gz > ready/RHA857_R2.fastq
# zcat SRR5140347*_2.fastq.gz > ready/HA404_R2.fastq
# zcat SRR5140348*_2.fastq.gz > ready/VIR847_R2.fastq
# zcat SRR5140350*_2.fastq.gz > ready/HA433_R2.fastq
# zcat SRR5140355*_2.fastq.gz > ready/RHA426_R2.fastq
# zcat SRR5140357*_2.fastq.gz > ready/RHA328_R2.fastq
# zcat SRR5140364*_2.fastq.gz > ready/RHA271_R2.fastq
# zcat SRR5140371*_2.fastq.gz > ready/HA89_R2.fastq
# zcat SRR5140372*_2.fastq.gz > ready/RHA408_R2.fastq
zcat SRR5140377*_2.fastq.gz > ready/HA316_R2.fastq
zcat SRR5140383*_2.fastq.gz > ready/HA124_R2.fastq
zcat SRR5140386*_2.fastq.gz > ready/RHA309_R2.fastq
zcat SRR5140387*_2.fastq.gz > ready/HA442_R2.fastq
zcat SRR5140391*_2.fastq.gz > ready/RHA355_R2.fastq

# gzip ready/RHA857_R2.fastq
# gzip ready/HA404_R2.fastq
# gzip ready/VIR847_R2.fastq
# gzip ready/HA433_R2.fastq
# gzip ready/RHA426_R2.fastq
# gzip ready/RHA328_R2.fastq
# gzip ready/RHA271_R2.fastq
# gzip ready/HA89_R2.fastq
# gzip ready/RHA408_R2.fastq
gzip ready/HA316_R2.fastq
gzip ready/HA124_R2.fastq
gzip ready/RHA309_R2.fastq
gzip ready/HA442_R2.fastq
gzip ready/RHA355_R2.fastq
