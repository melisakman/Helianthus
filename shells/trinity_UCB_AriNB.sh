#!/bin/bash
#SBATCH -D /clusterfs/vector/scratch/makman/trinity
#SBATCH -J Trinity
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#SBATCH --mem=256000
#SBATCH --time=320:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/trinity/outs/trinityAriNBcombined.out
#SBATCH -e /clusterfs/vector/scratch/makman/trinity/outs/trinityAriNBcombined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load trinity
module load bowtie/1.1.1
Trinity --seqType fq --max_memory 256G --left ../AriNB10M_all_1.fq.gz --right ../AriNB10M_all_2.fq.gz --CPU 12 --normalize_reads --output trinity_AriNB_combined --full_cleanup
