#!/bin/bash
#SBATCH --job-name=hapflk
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk-1.4/helianthus
#SBATCH --nodes=1
#SBATCH --time=100:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_helianthus_small_indel.out
#SBATCH -e /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_helianthus_small_indel.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load hapflk/1.4


hapflk --file small_helianthus_40 -K 15 --nfit=1 --ncpu=2