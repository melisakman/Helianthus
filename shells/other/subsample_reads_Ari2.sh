#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/
#SBATCH -J subsample 
#SBATCH --partition=vector 
#SBATCH --qos=vector_batch 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=60000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/trinity/outs/subsampleAri2.out
#SBATCH -e /global/home/users/makman/trinity/outs/subsampleAri2.err
#SBATCH --mail-user=makman@berkeley.edu 
#SBATCH --mail-type=All 
#SBATCH --array=1-18

srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-1-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-1-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-1-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-1-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-47-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-47-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-47-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-47-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-6-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-6-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-R1plus5-6-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-R1plus5-6-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-1-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-1-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-1-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-1-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-2-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-2-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-2-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-2-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-3-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-3-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-endosperm-3-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-endosperm-3-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-1-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-1-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-1-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-1-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-2-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-2-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-2-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-2-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-3-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-3-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 Ari/Ari-seedcoat-3-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/Ari-seedcoat-3-sub_2.fq.gz
