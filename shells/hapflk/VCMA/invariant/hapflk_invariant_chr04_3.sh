#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr04
#SBATCH -J flk_04_3
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr04_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr04_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr04_intersect_noHanXRQ_modified --miss_pheno 0 --chr 04 --from 40000001 --to 60000000 -p chr04_3 --ncpu 16 -K 15