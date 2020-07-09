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
#SBATCH -o /global/home/users/makman/trinity/outs/subsampleNB2.out
#SBATCH -e /global/home/users/makman/trinity/outs/subsampleNB2.err
#SBATCH --mail-user=makman@berkeley.edu 
#SBATCH --mail-type=All 
#SBATCH --array=1-18

srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-123-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-123-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-123-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-123-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-76-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-76-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-76-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-76-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-90-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-90-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-R1plus5-90-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-R1plus5-90-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-1-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-1-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-1-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-1-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-2-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-2-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-2-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-2-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-3-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-3-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-endosperm-3-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-endosperm-3-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-1-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-1-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-1-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-1-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-2-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-2-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-2-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-2-sub_2.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-3-clean_1.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-3-sub_1.fq.gz
srun /global/home/users/makman/seqtk/seqtk sample -s100 NB/NB-seedcoat-3-clean_2.fq.gz 10000000 | gzip -9 > /clusterfs/vector/instrumentData/blackmanlab/Helianthus/subsample/data/NB-seedcoat-3-sub_2.fq.gz
