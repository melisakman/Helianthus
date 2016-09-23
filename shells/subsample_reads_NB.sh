#!/bin/bash #SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/NB_copy/#SBATCH -J subsample #SBATCH --partition=vector #SBATCH --qos=vector_batch #SBATCH --mem=128000 #SBATCH --time=5:00:00 #SBATCH -o /global/home/users/makman/trinity/outs/subsampleNB.out#SBATCH -e /global/home/users/makman/trinity/outs/subsampleNB.err #SBATCH --mail-user=makman@berkeley.edu #SBATCH --mail-type=All #SBATCH --array=1-36/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-102-clean_1.fq.gz 10000000 > NB-R1-102-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-102-clean_2.fq.gz 10000000 > NB-R1-102-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-114-clean_1.fq.gz 10000000 > NB-R1-114-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-114-clean_2.fq.gz 10000000 > NB-R1-114-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-129-clean_1.fq.gz 10000000 > NB-R1-129-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-R1-129-clean_2.fq.gz 10000000 > NB-R1-129-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-1-clean_1.fq.gz 10000000 > NB-leaf-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-1-clean_2.fq.gz 10000000 > NB-leaf-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-2-clean_1.fq.gz 10000000 > NB-leaf-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-2-clean_2.fq.gz 10000000 > NB-leaf-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-3-clean_1.fq.gz 10000000 > NB-leaf-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-leaf-3-clean_2.fq.gz 10000000 > NB-leaf-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-1-clean_1.fq.gz 10000000 > NB-meristem-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-1-clean_2.fq.gz 10000000 > NB-meristem-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-2-clean_1.fq.gz 10000000 > NB-meristem-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-2-clean_2.fq.gz 10000000 > NB-meristem-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-3-clean_1.fq.gz 10000000 > NB-meristem-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-meristem-3-clean_2.fq.gz 10000000 > NB-meristem-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-1-clean_1.fq.gz 10000000 > NB-node-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-1-clean_2.fq.gz 10000000 > NB-node-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-2-clean_1.fq.gz 10000000 > NB-node-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-2-clean_2.fq.gz 10000000 > NB-node-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-3-clean_1.fq.gz 10000000 > NB-node-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-node-3-clean_2.fq.gz 10000000 > NB-node-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-1-clean_1.fq.gz 10000000 > NB-root-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-1-clean_2.fq.gz 10000000 > NB-root-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-2-clean_1.fq.gz 10000000 > NB-root-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-2-clean_2.fq.gz 10000000 > NB-root-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-3-clean_1.fq.gz 10000000 > NB-root-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-root-3-clean_2.fq.gz 10000000 > NB-root-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-1-clean_1.fq.gz 10000000 > NB-shoot-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-1-clean_2.fq.gz 10000000 > NB-shoot-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-2-clean_1.fq.gz 10000000 > NB-shoot-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-2-clean_2.fq.gz 10000000 > NB-shoot-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-3-clean_1.fq.gz 10000000 > NB-shoot-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 NB_copy/NB-shoot-3-clean_2.fq.gz 10000000 > NB-shoot-3-sub_2.fq