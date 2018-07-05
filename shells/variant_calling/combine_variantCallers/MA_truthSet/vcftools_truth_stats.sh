#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/stats
#SBATCH -J stats
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_truth_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_truth_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0

bcftools stats /clusterfs/rosalind/users/makman/GATK/bcftools_isec/truthSet/truthSet_chr01.vcf > truthSet_chr01.vchk
plot-vcfstats truthSet_chr01.vchk -p plot_truthSet_chr01

bcftools stats /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr01_2/chr01_intersect.vcf.gz > chr01_intersect_latest.vchk
plot-vcfstats chr01_intersect_latest.vchk -p plot_chr01_latest
