#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr10
#SBATCH -J flk_10_6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr10_6.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr10_6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr10_intersect_noHanXRQ_modified --miss_pheno 0 --chr 10 --from 100000001 --to 120000000 -p chr10_6 --ncpu 16 -K 15