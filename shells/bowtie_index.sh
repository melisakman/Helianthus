#!/bin/bash
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/bowtie/index/
#SBATCH -J bowtie
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32000
#SBATCH --time=84:00:00
#SBATCH -o /global/home/users/makman/bowtie/outs/bowtie_index.out
#SBATCH -e /global/home/users/makman/bowtie/outs/bowtie_index.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bowtie/2.2.3
srun bowtie-build /clusterfs/vector/instrumentData/blackmanlab/Helianthus/XRQ/HanXRQr1.0-20151230.fa HanXRQ
