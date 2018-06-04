#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/SNPEff/VCMA/XRQ
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_database_XRQ.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_database_XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
srun java -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar build -gff3 -v XRQ
