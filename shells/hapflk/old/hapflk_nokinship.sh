#!/bin/bash
#SBATCH --job-name=hapflk
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial
#SBATCH --nodes=1
#SBATCH --time=5:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_nokinship.out
#SBATCH -e /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_nokinship.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load hapflk/1.4


hapflk --file hapmap3-lct -K 15 --nfit=1 --ncpu=2
