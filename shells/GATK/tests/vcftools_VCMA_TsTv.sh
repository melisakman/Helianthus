#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/stats
#SBATCH -J stats
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
matplotlib/2.1.0

bcftools stats vcf-isec_chr01/chr01_intersect.vcf > chr01_intersect.vchk
bcftools stats vcf-isec_chr02/chr02_intersect.vcf > chr02_intersect.vchk
bcftools stats vcf-isec_chr03/chr03_intersect.vcf > chr03_intersect.vchk
bcftools stats vcf-isec_chr04/chr04_intersect.vcf > chr04_intersect.vchk
bcftools stats vcf-isec_chr05/chr05_intersect.vcf > chr05_intersect.vchk
bcftools stats vcf-isec_chr06/chr06_intersect.vcf > chr06_intersect.vchk
bcftools stats vcf-isec_chr07/chr07_intersect.vcf > chr07_intersect.vchk
bcftools stats vcf-isec_chr08/chr08_intersect.vcf > chr08_intersect.vchk
bcftools stats vcf-isec_chr09/chr09_intersect.vcf > chr09_intersect.vchk
bcftools stats vcf-isec_chr10/chr10_intersect.vcf > chr10_intersect.vchk
bcftools stats vcf-isec_chr11/chr11_intersect.vcf > chr11_intersect.vchk
bcftools stats vcf-isec_chr12/chr12_intersect.vcf > chr12_intersect.vchk
bcftools stats vcf-isec_chr13/chr13_intersect.vcf > chr13_intersect.vchk
bcftools stats vcf-isec_chr14/chr14_intersect.vcf > chr14_intersect.vchk
bcftools stats vcf-isec_chr15/chr15_intersect.vcf > chr15_intersect.vchk
bcftools stats vcf-isec_chr16/chr16_intersect.vcf > chr16_intersect.vchk
bcftools stats vcf-isec_chr17/chr17_intersect.vcf > chr17_intersect.vchk
# bcftools stats vcf-isec_chr01_3/chr01_intersect_3.vcf.gz > chr01_intersect_3.vchk
# bcftools stats vcf-isec_chr02_3/chr02_intersect_3.vcf.gz > chr02_intersect_3.vchk
# bcftools stats vcf-isec_chr03_3/chr03_intersect_3.vcf.gz > chr03_intersect_3.vchk
# bcftools stats vcf-isec_chr04_3/chr04_intersect_3.vcf.gz > chr04_intersect_3.vchk
# bcftools stats vcf-isec_chr05_3/chr05_intersect_3.vcf.gz > chr05_intersect_3.vchk
# bcftools stats vcf-isec_chr06_3/chr06_intersect_3.vcf.gz > chr06_intersect_3.vchk
# bcftools stats vcf-isec_chr07_3/chr07_intersect_3.vcf.gz > chr07_intersect_3.vchk
# bcftools stats vcf-isec_chr08_3/chr08_intersect_3.vcf.gz > chr08_intersect_3.vchk
# bcftools stats vcf-isec_chr09_3/chr09_intersect_3.vcf.gz > chr09_intersect_3.vchk
# bcftools stats vcf-isec_chr10_3/chr10_intersect_3.vcf.gz > chr10_intersect_3.vchk
# bcftools stats vcf-isec_chr11_3/chr11_intersect_3.vcf.gz > chr11_intersect_3.vchk
# bcftools stats vcf-isec_chr12_3/chr12_intersect_3.vcf.gz > chr12_intersect_3.vchk
# bcftools stats vcf-isec_chr13_3/chr13_intersect_3.vcf.gz > chr13_intersect_3.vchk
# bcftools stats vcf-isec_chr14_3/chr14_intersect_3.vcf.gz > chr14_intersect_3.vchk
# bcftools stats vcf-isec_chr15_3/chr15_intersect_3.vcf.gz > chr15_intersect_3.vchk
# bcftools stats vcf-isec_chr16_3/chr16_intersect_3.vcf.gz > chr16_intersect_3.vchk
# bcftools stats vcf-isec_chr17_3/chr17_intersect_3.vcf.gz > chr17_intersect_3.vchk

plot-vcfstats chr01_intersect.vchk -p plot_chr01
plot-vcfstats chr02_intersect.vchk -p plot_chr02
plot-vcfstats chr03_intersect.vchk -p plot_chr03
plot-vcfstats chr04_intersect.vchk -p plot_chr04
plot-vcfstats chr05_intersect.vchk -p plot_chr05
plot-vcfstats chr06_intersect.vchk -p plot_chr06
plot-vcfstats chr07_intersect.vchk -p plot_chr07
plot-vcfstats chr08_intersect.vchk -p plot_chr08
plot-vcfstats chr09_intersect.vchk -p plot_chr09
plot-vcfstats chr10_intersect.vchk -p plot_chr10
plot-vcfstats chr11_intersect.vchk -p plot_chr11
plot-vcfstats chr12_intersect.vchk -p plot_chr12
plot-vcfstats chr13_intersect.vchk -p plot_chr13
plot-vcfstats chr14_intersect.vchk -p plot_chr14
plot-vcfstats chr15_intersect.vchk -p plot_chr15
plot-vcfstats chr16_intersect.vchk -p plot_chr16
plot-vcfstats chr17_intersect.vchk -p plot_chr17
plot-vcfstats chr01_intersect_3.vchk -p plot_chr01_3
plot-vcfstats chr02_intersect_3.vchk -p plot_chr02_3
plot-vcfstats chr03_intersect_3.vchk -p plot_chr03_3
plot-vcfstats chr04_intersect_3.vchk -p plot_chr04_3
plot-vcfstats chr05_intersect_3.vchk -p plot_chr05_3
plot-vcfstats chr06_intersect_3.vchk -p plot_chr06_3
plot-vcfstats chr07_intersect_3.vchk -p plot_chr07_3
plot-vcfstats chr08_intersect_3.vchk -p plot_chr08_3
plot-vcfstats chr09_intersect_3.vchk -p plot_chr09_3
plot-vcfstats chr10_intersect_3.vchk -p plot_chr10_3
plot-vcfstats chr11_intersect_3.vchk -p plot_chr11_3
plot-vcfstats chr12_intersect_3.vchk -p plot_chr12_3
plot-vcfstats chr13_intersect_3.vchk -p plot_chr13_3
plot-vcfstats chr14_intersect_3.vchk -p plot_chr14_3
plot-vcfstats chr15_intersect_3.vchk -p plot_chr15_3
plot-vcfstats chr16_intersect_3.vchk -p plot_chr16_3
plot-vcfstats chr17_intersect_3.vchk -p plot_chr17_3
