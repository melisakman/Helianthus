#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr16
#SBATCH -J flk_16_9
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr16_9.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr16_9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr16_intersect_noHanXRQ_modified --miss_pheno 0 --chr 16 --from 160000001 --to 180000000 -p chr16_9 --ncpu 16 -K 15