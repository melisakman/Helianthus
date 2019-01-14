#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J vcfstats
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0

bcftools stats chr01_final_lessStringentInvariants.vcf > chr01_final_lessStringentInvariants.vchk
bcftools stats chr02_final_lessStringentInvariants.vcf > chr02_final_lessStringentInvariants.vchk
bcftools stats chr03_final_lessStringentInvariants.vcf > chr03_final_lessStringentInvariants.vchk
bcftools stats chr04_final_lessStringentInvariants.vcf > chr04_final_lessStringentInvariants.vchk
bcftools stats chr05_final_lessStringentInvariants.vcf > chr05_final_lessStringentInvariants.vchk
bcftools stats chr06_final_lessStringentInvariants.vcf > chr06_final_lessStringentInvariants.vchk
bcftools stats chr07_final_lessStringentInvariants.vcf > chr07_final_lessStringentInvariants.vchk
bcftools stats chr08_final_lessStringentInvariants.vcf > chr08_final_lessStringentInvariants.vchk
bcftools stats chr09_final_lessStringentInvariants.vcf > chr09_final_lessStringentInvariants.vchk
bcftools stats chr10_final_lessStringentInvariants.vcf > chr10_final_lessStringentInvariants.vchk
bcftools stats chr11_final_lessStringentInvariants.vcf > chr11_final_lessStringentInvariants.vchk
bcftools stats chr12_final_lessStringentInvariants.vcf > chr12_final_lessStringentInvariants.vchk
bcftools stats chr13_final_lessStringentInvariants.vcf > chr13_final_lessStringentInvariants.vchk
bcftools stats chr14_final_lessStringentInvariants.vcf > chr14_final_lessStringentInvariants.vchk
bcftools stats chr15_final_lessStringentInvariants.vcf > chr15_final_lessStringentInvariants.vchk
bcftools stats chr16_final_lessStringentInvariants.vcf > chr16_final_lessStringentInvariants.vchk
bcftools stats chr17_final_lessStringentInvariants.vcf > chr17_final_lessStringentInvariants.vchk





plot-vcfstats chr01_final_lessStringentInvariants.vchk -p plot_chr01_final_lessStringentInvariants
plot-vcfstats chr02_final_lessStringentInvariants.vchk -p plot_chr02_final_lessStringentInvariants
plot-vcfstats chr03_final_lessStringentInvariants.vchk -p plot_chr03_final_lessStringentInvariants
plot-vcfstats chr04_final_lessStringentInvariants.vchk -p plot_chr04_final_lessStringentInvariants
plot-vcfstats chr05_final_lessStringentInvariants.vchk -p plot_chr05_final_lessStringentInvariants
plot-vcfstats chr06_final_lessStringentInvariants.vchk -p plot_chr06_final_lessStringentInvariants
plot-vcfstats chr07_final_lessStringentInvariants.vchk -p plot_chr07_final_lessStringentInvariants
plot-vcfstats chr08_final_lessStringentInvariants.vchk -p plot_chr08_final_lessStringentInvariants
plot-vcfstats chr09_final_lessStringentInvariants.vchk -p plot_chr09_final_lessStringentInvariants
plot-vcfstats chr10_final_lessStringentInvariants.vchk -p plot_chr10_final_lessStringentInvariants
plot-vcfstats chr11_final_lessStringentInvariants.vchk -p plot_chr11_final_lessStringentInvariants
plot-vcfstats chr12_final_lessStringentInvariants.vchk -p plot_chr12_final_lessStringentInvariants
plot-vcfstats chr13_final_lessStringentInvariants.vchk -p plot_chr13_final_lessStringentInvariants
plot-vcfstats chr14_final_lessStringentInvariants.vchk -p plot_chr14_final_lessStringentInvariants
plot-vcfstats chr15_final_lessStringentInvariants.vchk -p plot_chr15_final_lessStringentInvariants
plot-vcfstats chr16_final_lessStringentInvariants.vchk -p plot_chr16_final_lessStringentInvariants
plot-vcfstats chr17_final_lessStringentInvariants.vchk -p plot_chr17_final_lessStringentInvariants