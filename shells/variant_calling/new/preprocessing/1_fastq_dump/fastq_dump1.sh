#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J fastqdump
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=720:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqdump.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqdump.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
module load sra-tools/2.8.1 

echo '/global/home/users/makman/ncbi/public/root = "/clusterfs/rosalind/users/makman/tmp"' > $HOME/.ncbi/user-settings.mkfg
fastq-dump -I --split-files SRR5907869
fastq-dump -I --split-files SRR5907847
fastq-dump -I --split-files SRR5907848
fastq-dump -I --split-files SRR5907845
fastq-dump -I --split-files SRR5907851
fastq-dump -I --split-files SRR5907826
fastq-dump -I --split-files SRR5907825
fastq-dump -I --split-files SRR5929273


