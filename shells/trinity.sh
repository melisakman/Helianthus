#!/bin/bash
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/trinity
#SBATCH -J Trinity
#SBATCH -o /global/home/users/makman/trinity/outs/trinity.out
#SBATCH -e /global/home/users/makman/trinity/outs/trinity.err
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=6:00:00
#SBATCH --ntasks=64
#SBATCH --mem=256000
module load trinity

srun Trinity --seqType fq --max_memory 256G --left Ari_2_NLM_1.fq --right /Ari_2_NLM_2.fq --CPU 64 --normalize_reads --output trinity_Ari2NLM --full_cleanup



