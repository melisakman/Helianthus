#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J stats
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0


bcftools stats chr01_final.vcf.gz > chr01_final.vchk
plot-vcfstats chr01_final.vchk -p plot_chr01_final


