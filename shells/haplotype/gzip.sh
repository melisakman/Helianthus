#!/bin/bash
#
#SBATCH --job-name=zip
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/
#SBATCH --time=8:00:00
#SBATCH -o ../outs/zip.out
#SBATCH -e ../outs/zip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip HanXRQ_filtered_ordered_newVC.vcf.gz