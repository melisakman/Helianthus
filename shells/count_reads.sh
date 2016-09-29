#!/bin/bash
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/
#SBATCH --partition=vector
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/count_reads.out
#SBATCH -e /global/home/users/makman/trinity/outs/count_reads.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-108
#SBATCH --job-name=count
srun zcat Ari-R1-16-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1-16-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1-50-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1-50-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1-55-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1-55-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-47-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-47-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-6-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-R1plus5-6-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-endosperm-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-leaf-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-meristem-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-node-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-root-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-seedcoat-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat Ari-shoot-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-102-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-102-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-114-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-114-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-129-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1-129-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-123-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-123-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-76-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-76-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-90-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-R1plus5-90-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-endosperm-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-leaf-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-meristem-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-node-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-root-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-seedcoat-3-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-1-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-1-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-2-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-2-sub_2.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-3-sub_1.fq.gz | echo $((`wc -l`/4))
srun zcat NB-shoot-3-sub_2.fq.gz | echo $((`wc -l`/4))
