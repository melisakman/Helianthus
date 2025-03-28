#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G4_90/
#SBATCH -J vcfstats
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0

bcftools stats chr01_final.vcf > chr01_final.vchk
bcftools stats chr02_final.vcf.gz > chr02_final.vchk
bcftools stats chr03_final.vcf.gz > chr03_final.vchk
bcftools stats chr04_final.vcf.gz > chr04_final.vchk
bcftools stats chr05_final.vcf.gz > chr05_final.vchk
bcftools stats chr06_final.vcf.gz > chr06_final.vchk
bcftools stats chr07_final.vcf.gz > chr07_final.vchk
bcftools stats chr08_final.vcf.gz > chr08_final.vchk
bcftools stats chr09_final.vcf.gz > chr09_final.vchk
bcftools stats chr10_final.vcf.gz > chr10_final.vchk
bcftools stats chr11_final.vcf.gz > chr11_final.vchk
bcftools stats chr12_final.vcf.gz > chr12_final.vchk
bcftools stats chr13_final.vcf.gz > chr13_final.vchk
bcftools stats chr14_final.vcf.gz > chr14_final.vchk
bcftools stats chr15_final.vcf.gz > chr15_final.vchk
bcftools stats chr16_final.vcf.gz > chr16_final.vchk
bcftools stats chr17_final.vcf.gz > chr17_final.vchk





plot-vcfstats chr01_final.vchk -p plot_chr01_final
plot-vcfstats chr02_final.vchk -p plot_chr02_final
plot-vcfstats chr03_final.vchk -p plot_chr03_final
plot-vcfstats chr04_final.vchk -p plot_chr04_final
plot-vcfstats chr05_final.vchk -p plot_chr05_final
plot-vcfstats chr06_final.vchk -p plot_chr06_final
plot-vcfstats chr07_final.vchk -p plot_chr07_final
plot-vcfstats chr08_final.vchk -p plot_chr08_final
plot-vcfstats chr09_final.vchk -p plot_chr09_final
plot-vcfstats chr10_final.vchk -p plot_chr10_final
plot-vcfstats chr11_final.vchk -p plot_chr11_final
plot-vcfstats chr12_final.vchk -p plot_chr12_final
plot-vcfstats chr13_final.vchk -p plot_chr13_final
plot-vcfstats chr14_final.vchk -p plot_chr14_final
plot-vcfstats chr15_final.vchk -p plot_chr15_final
plot-vcfstats chr16_final.vchk -p plot_chr16_final
plot-vcfstats chr17_final.vchk -p plot_chr17_final
