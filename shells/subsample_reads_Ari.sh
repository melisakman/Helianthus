#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/
#SBATCH -J subsample 
#SBATCH --partition=vector 
#SBATCH --qos=vector_batch 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10000
#SBATCH --time=1:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/subsampleAri.out
#SBATCH -e /global/home/users/makman/trinity/outs/subsampleAri.err
#SBATCH --mail-user=makman@berkeley.edu 
#SBATCH --mail-type=All 
#SBATCH --array=1-36
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-16-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-16-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-16-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-16-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-50-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-50-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-50-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-50-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-55-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-55-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-R1-55-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-R1-55-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-1-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-1-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-1-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-1-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-2-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-2-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-2-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-2-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-3-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-3-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-leaf-3-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-leaf-3-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-1-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-1-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-1-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-1-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-2-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-2-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-2-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-2-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-3-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-3-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-meristem-3-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-meristem-3-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-1-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-1-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-1-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-1-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-2-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-2-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-2-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-2-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-3-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-3-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-node-3-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-node-3-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-1-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-1-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-1-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-1-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-2-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-2-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-2-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-2-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-3-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-3-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-root-3-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-root-3-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-1-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-1-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-1-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-1-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-2-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-2-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-2-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-2-sub_2.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-3-clean_1.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-3-sub_1.fq
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari_copy/Ari-shoot-3-clean_2.fq.gz 10000000 > /clusterfs/vector/scratch/makman/data/Ari-shoot-3-sub_2.fq

