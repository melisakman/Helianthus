#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/pegas
#SBATCH -J sift
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=4:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/pegas/vcf2fasta.out
#SBATCH -e /clusterfs/vector/scratch/makman/pegas/vcf2fasta.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load python
srun python ./vcf2FASTA.py -v /clusterfs/vector/scratch/makman/snpEff/vcf/*.vcf -o HanXRQChr01.fasta -c HanXRQChr01
