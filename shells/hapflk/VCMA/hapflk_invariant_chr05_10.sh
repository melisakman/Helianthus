#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr05
#SBATCH -J flk_05_10
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr05_10_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr05_10_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr05_intersect_variantOnly_modified --miss_pheno 0 --chr 05 --from 180000001 --to 200000000 -p chr05_10 --ncpu 16 -K 15