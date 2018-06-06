#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr01
#SBATCH -J flkchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr01_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr01_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
hapflk --file chr01_intersect_noHanXRQ_modified --miss_pheno 0 --chr 01 --from 20000001 --to 40000000 -p chr01_2 --ncpu 16 -K 15