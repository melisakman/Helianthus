#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/
#SBATCH -J vcfFilter
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=18000
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_dataStructure.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_dataStructure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-1
module load python
gunzip *_ordered.vcf.gz
# python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQ
