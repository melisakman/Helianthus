#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw/ready
#SBATCH -J gzip
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=480:00:00
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gzip Laguna_Pueblo_R1.fastq
# gzip Laguna_Pueblo_R2.fastq
# gzip Mandan2_R1.fastq
# gzip Mandan2_R2.fastq
# gzip MexCult14_R1.fastq
# gzip MexCult14_R2.fastq
# gzip MexCult15_R1.fastq
# gzip MexCult15_R2.fastq
# gzip MexCult3_R1.fastq
# gzip MexCult3_R2.fastq
gzip MexCult6_R1.fastq
gzip MexCult6_R2.fastq
# gzip MexCult7_R1.fastq
# gzip MexCult7_R2.fastq
# gzip MexCult9_R1.fastq
# gzip MexCult9_R2.fastq
# gzip Pueblo_R1.fastq
# gzip Pueblo_R2.fastq
# gzip RHA355_R1.fastq
# gzip RHA355_R2.fastq
# gzip Seneca_R1.fastq
# gzip Seneca_R2.fastq
# gzip Zuni_R1.fastq
# gzip Zuni_R2.fastq
# gzip annKS2W-35_R1.fastq
# gzip annKS2W-35_R2.fastq
# gzip annMB1W-40_R1.fastq
# gzip annMB1W-40_R2.fastq
# gzip annMO1W-39_R1.fastq
# gzip annMO1W-39_R2.fastq
# gzip annND1W-6_R1.fastq
# gzip annND1W-6_R2.fastq
# gzip annSK1W-Q_R1.fastq
# gzip annSK1W-Q_R2.fastq