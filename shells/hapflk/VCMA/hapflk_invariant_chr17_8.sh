#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J flk_17_8
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr17_8_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr17_8_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr17_intersect_variantOnly_modified --miss_pheno 0 --chr 17 --from 140000001 --to 160000000 -p chr17_8 --ncpu 16 -K 15