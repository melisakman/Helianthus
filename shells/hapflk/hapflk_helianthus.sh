#!/bin/bash
#SBATCH --job-name=hapflk
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/rosalind/users/makman/hapflk-1.4/helianthus
#SBATCH --nodes=1
#SBATCH --time=5:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_helianthus.out
#SBATCH -e /clusterfs/rosalind/users/makman/hapflk-1.4/hapflk-tutorial/hapflk_helianthus.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load hapflk/1.4


hapflk --file merged_NVC_noXRQ_fixed -K 3 --nfit=15 --ncpu=2