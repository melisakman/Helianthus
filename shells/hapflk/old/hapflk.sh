#!/bin/bash
#SBATCH --job-name=hapflk
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial
#SBATCH --nodes=1
#SBATCH --time=5:00:00
#SBATCH --mem=32000
#SBATCH -o hapflk.out
#SBATCH -e hapflk.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

echo first
echo $PYTHONPATH
module load hapflk/1.4
echo second
echo $PYTHONPATH

hapflk --file hapmap3-lct --kinship kinship.txt -K 15 --nfit=1 --ncpu=2
