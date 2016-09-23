#!/bin/bash #SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/Ari_copy/#SBATCH -J subsample #SBATCH --partition=vector #SBATCH --qos=vector_batch #SBATCH --mem=128000 #SBATCH --time=120:00:00 #SBATCH -o /global/home/users/makman/trinity/outs/subsampleAri.out#SBATCH -e /global/home/users/makman/trinity/outs/subsampleAri.err#SBATCH --mail-user=makman@berkeley.edu #SBATCH --mail-type=All #SBATCH --array=1-36/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-16-clean_1.fq.gz 10000000 > Ari-R1-16-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-16-clean_2.fq.gz 10000000 > Ari-R1-16-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-50-clean_1.fq.gz 10000000 > Ari-R1-50-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-50-clean_2.fq.gz 10000000 > Ari-R1-50-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-55-clean_1.fq.gz 10000000 > Ari-R1-55-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-55-clean_2.fq.gz 10000000 > Ari-R1-55-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-1-clean_1.fq.gz 10000000 > Ari-leaf-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-1-clean_2.fq.gz 10000000 > Ari-leaf-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-2-clean_1.fq.gz 10000000 > Ari-leaf-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-2-clean_2.fq.gz 10000000 > Ari-leaf-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-3-clean_1.fq.gz 10000000 > Ari-leaf-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-3-clean_2.fq.gz 10000000 > Ari-leaf-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-1-clean_1.fq.gz 10000000 > Ari-meristem-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-1-clean_2.fq.gz 10000000 > Ari-meristem-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-2-clean_1.fq.gz 10000000 > Ari-meristem-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-2-clean_2.fq.gz 10000000 > Ari-meristem-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-3-clean_1.fq.gz 10000000 > Ari-meristem-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-3-clean_2.fq.gz 10000000 > Ari-meristem-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-1-clean_1.fq.gz 10000000 > Ari-node-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-1-clean_2.fq.gz 10000000 > Ari-node-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-2-clean_1.fq.gz 10000000 > Ari-node-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-2-clean_2.fq.gz 10000000 > Ari-node-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-3-clean_1.fq.gz 10000000 > Ari-node-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-3-clean_2.fq.gz 10000000 > Ari-node-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-1-clean_1.fq.gz 10000000 > Ari-root-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-1-clean_2.fq.gz 10000000 > Ari-root-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-2-clean_1.fq.gz 10000000 > Ari-root-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-2-clean_2.fq.gz 10000000 > Ari-root-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-3-clean_1.fq.gz 10000000 > Ari-root-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-3-clean_2.fq.gz 10000000 > Ari-root-3-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-1-clean_1.fq.gz 10000000 > Ari-shoot-1-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-1-clean_2.fq.gz 10000000 > Ari-shoot-1-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-2-clean_1.fq.gz 10000000 > Ari-shoot-2-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-2-clean_2.fq.gz 10000000 > Ari-shoot-2-sub_2.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-3-clean_1.fq.gz 10000000 > Ari-shoot-3-sub_1.fq/global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-3-clean_2.fq.gz 10000000 > Ari-shoot-3-sub_2.fq