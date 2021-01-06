#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J flk_03_9
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr03_9_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr03_9_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr03_intersect_variantOnly_modified --miss_pheno 0 --chr 03 --from 160000001 --to 180000000 -p chr03_9 --ncpu 16 -K 15