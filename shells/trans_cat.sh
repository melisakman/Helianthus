#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/
#SBATCH -J gzip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=60:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/cat.out
#SBATCH -e /global/home/users/makman/trinity/outs/cat.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-8
srun cat Ari_copy/Ari-leaf-2-clean_1.fq.gz Ari_copy/Ari-meristem-2-clean_1.fq.gz Ari_copy/Ari-node-2-clean_1.fq.gz > Ari_copy/Ari_2_NLM_1.fq.gz
srun cat Ari_copy/Ari-leaf-2-clean_2.fq.gz Ari_copy/Ari-meristem-2-clean_2.fq.gz Ari_copy/Ari-node-2-clean_2.fq.gz > Ari_copy/Ari_2_NLM_2.fq.gz
srun cat Ari_copy/Ari-root-2-clean_1.fq.gz Ari_copy/Ari-shoot-2-clean_1.fq.gz > Ari_copy/Ari_2_RS_1.fq.gz
srun cat Ari_copy/Ari-root-2-clean_2.fq.gz Ari_copy/Ari-shoot-2-clean_2.fq.gz > Ari_copy/Ari_2_RS_2.fq.gz

srun cat NB_copy/NB-leaf-3-clean_1.fq.gz NB_copy/NB-meristem-3-clean_1.fq.gz NB_copy/NB-node-3-clean_1.fq.gz > NB_copy/NB_3_NLM_1.fq.gz
srun cat NB_copy/NB-leaf-3-clean_2.fq.gz NB_copy/NB-meristem-3-clean_2.fq.gz NB_copy/NB-node-3-clean_2.fq.gz > NB_copy/NB_3_NLM_2.fq.gz
srun cat NB_copy/NB-root-2-clean_1.fq.gz NB_copy/NB-shoot-2-clean_1.fq.gz > NB_copy/NB_2_RS_1.fq.gz
srun cat NB_copy/NB-root-2-clean_2.fq.gz NB_copy/NB-shoot-2-clean_2.fq.gz > NB_copy/NB_2_RS_2.fq.gz