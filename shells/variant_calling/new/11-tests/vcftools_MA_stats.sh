#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/
#SBATCH -J stats
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_stats.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_stats.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module unload python
module load python/2.7.14
module load matplotlib/2.1.0


# bcftools stats chr01_final.vcf.gz > chr01_final.vchk
# bcftools stats chr02_final.vcf.gz > chr02_final.vchk
# bcftools stats chr03_final.vcf.gz > chr03_final.vchk
# bcftools stats chr04_final.vcf.gz > chr04_final.vchk
# bcftools stats chr05_final.vcf.gz > chr05_final.vchk
# bcftools stats chr06_final.vcf.gz > chr06_final.vchk
# bcftools stats chr07_final.vcf.gz > chr07_final.vchk
# bcftools stats chr08_final.vcf.gz > chr08_final.vchk
# bcftools stats chr09_final.vcf.gz > chr09_final.vchk
# bcftools stats chr10_final.vcf.gz > chr10_final.vchk
# bcftools stats chr11_final.vcf.gz > chr11_final.vchk
# bcftools stats chr12_final.vcf.gz > chr12_final.vchk
# bcftools stats chr13_final.vcf.gz > chr13_final.vchk
# bcftools stats chr14_final.vcf.gz > chr14_final.vchk
# bcftools stats chr15_final.vcf.gz > chr15_final.vchk
# bcftools stats chr16_final.vcf.gz > chr16_final.vchk
# bcftools stats chr17_final.vcf.gz > chr17_final.vchk
# 
# 
# 
# plot-vcfstats chr01_final.vchk -p plot_chr01_final
# plot-vcfstats chr02_final.vchk -p plot_chr02_final
# plot-vcfstats chr03_final.vchk -p plot_chr03_final
# plot-vcfstats chr04_final.vchk -p plot_chr04_final
# plot-vcfstats chr05_final.vchk -p plot_chr05_final
# plot-vcfstats chr06_final.vchk -p plot_chr06_final
# plot-vcfstats chr07_final.vchk -p plot_chr07_final
# plot-vcfstats chr08_final.vchk -p plot_chr08_final
# plot-vcfstats chr09_final.vchk -p plot_chr09_final
# plot-vcfstats chr10_final.vchk -p plot_chr10_final
# plot-vcfstats chr11_final.vchk -p plot_chr11_final
# plot-vcfstats chr12_final.vchk -p plot_chr12_final
# plot-vcfstats chr13_final.vchk -p plot_chr13_final
# plot-vcfstats chr14_final.vchk -p plot_chr14_final
# plot-vcfstats chr15_final.vchk -p plot_chr15_final
# plot-vcfstats chr16_final.vchk -p plot_chr16_final
# plot-vcfstats chr17_final.vchk -p plot_chr17_final

bcftools stats JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP.vcf.gz > JS/chr01_JS_SNP.vchk
bcftools stats JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_SNP_VQSR99.vcf.gz > JS/chr01_JS_SNP_VQSR.vchk

bcftools stats bcftools_isec/chr01_2plus_annot_G8_VQSR99.vcf.gz > bcftools_isec/chr01_2plus_annot_G8_VQSR99.vchk
bcftools stats bcftools_isec/chr01_2plus_annot.vcf.gz > bcftools_isec/chr01_2plus_annot.vchk

plot-vcfstats JS/chr01_JS_SNP.vchk -p JS/plot_chr01_JS_SNP
plot-vcfstats JS/chr01_JS_SNP_VQSR.vchk JS/plot_chr01_JS_SNP_VQSR
plot-vcfstats bcftools_isec/chr01_2plus_annot_G8_VQSR99.vchk bcftools_isec/plot_chr01_2plus_annot_G8_VQSR99
plot-vcfstats bcftools_isec/chr01_2plus_annot.vchk bcftools_isec/plot_chr01_2plus_annot


