#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis/bedassle/final
#SBATCH -J badass13
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=880:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/bedassle_v22_13.out
#SBATCH -e /global/home/users/makman/Arabidopsis/bedassle_v22_13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load bcftools/1.6
module load r/3.5.1

Rscript ~/git/Helianthus/shells/bedassle/subsets/bedassle.r