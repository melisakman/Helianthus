#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/
#SBATCH -J fastqdump
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=720:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqdump1.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqdump1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

echo '/global/home/users/makman/ncbi/public/root = "/clusterfs/rosalind/users/makman/tmp"' > $HOME/.ncbi/user-settings.mkfg
clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907869
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907847
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907848
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907845
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907851
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907826
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5907825
# clusterfs/rosalind/users/makman/sratoolkit.2.9.2-centos_linux64/bin/fastq-dump -I --split-files SRR5929273


