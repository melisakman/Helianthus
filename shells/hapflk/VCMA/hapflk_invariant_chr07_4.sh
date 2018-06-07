#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr07
#SBATCH -J flk_07_4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr07_4_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr07_4_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr07_intersect_variantOnly_modified --miss_pheno 0 --chr 07 --from 60000001 --to 80000000 -p chr07_4 --ncpu 16 -K 15