#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J flk_02_10
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr02_10_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr02_10_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr02_intersect_variantOnly_modified --miss_pheno 0 --chr 02 --from 180000001 --to 200000000 -p chr02_10 --ncpu 16 -K 15