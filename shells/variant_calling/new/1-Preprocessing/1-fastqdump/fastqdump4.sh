#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J fastqdump
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqdump4.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqdump4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

echo '/global/home/users/makman/ncbi/public/root = "/clusterfs/rosalind/users/makman/tmp"' > $HOME/.ncbi/user-settings.mkfg
echo '/global/home/users/makman/ncbi/public/sra = "/clusterfs/rosalind/users/makman/ncbi/public/sra"' > $HOME/.ncbi/user-settings.mkfg
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140365
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140369
/clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140394
/clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140390
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140342
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140336
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140329
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140367
# /clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5140385


