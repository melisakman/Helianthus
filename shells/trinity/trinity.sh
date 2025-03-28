#!/bin/bash
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/trinity
#SBATCH -J Trinity
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=128000
#SBATCH --time=120:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/trinity_2.out
#SBATCH -e /global/home/users/makman/trinity/outs/trinity_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load trinity
module load bowtie/1.1.1
module load samtools
srun Trinity --seqType fq --max_memory 128G --left Ari_2_NLM_1.fq --right Ari_2_NLM_1.fq --CPU 64 --normalize_reads --output trinity_Ari2_NLM --full_cleanup