#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J group
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/seperate_groups_JS_GATK.out
#SBATCH -e /global/home/users/makman/GATK/outs/seperate_groups_JS_GATK.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/global/scratch/makman/temp
module load java
module load python

bcftools concat chr01_1_JS_GATK_VQSR_noVQSR/0000.vcf.gz \
chr01_1_JS_GATK_VQSR_noVQSR/0001.vcf.gz \
chr01_1_JS_GATK_VQSR_noVQSR/0002.vcf.gz \
chr01_1_JS_GATK_VQSR_noVQSR/0003.vcf.gz > chr01_1_JS_GATK_VQSR_noVQSR/all.vcf

python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/JS_comp/seperate_groups.py chr01_1_JS_GATK_VQSR_noVQSR/sites.txt chr01_1_JS_GATK_VQSR_noVQSR/all.vcf

bcftools stats chr01_1_JS_GATK_VQSR_noVQSR/JS_VQSR.vcf > chr01_1_JS_GATK_VQSR_noVQSR/JS_VQSR.vchk
bcftools stats chr01_1_JS_GATK_VQSR_noVQSR/JS_GATK_VQSR.vcf > chr01_1_JS_GATK_VQSR_noVQSR/JS_GATK_VQSR.vchk
bcftools stats chr01_1_JS_GATK_VQSR_noVQSR/MA_VQSR.vcf > chr01_1_JS_GATK_VQSR_noVQSR/MA_VQSR.vchk
bcftools stats chr01_1_JS_GATK_VQSR_noVQSR/JS_noVQSR.vcf > chr01_1_JS_GATK_VQSR_noVQSR/JS_noVQSR.vchk
bcftools stats chr01_1_JS_GATK_VQSR_noVQSR/MA_noVQSR.vcf > chr01_1_JS_GATK_VQSR_noVQSR/MA_noVQSR.vchk

plot-vcfstats chr01_1_JS_GATK_VQSR_noVQSR/JS_VQSR.vchk -p chr01_1_JS_GATK_VQSR_noVQSR/plot_JS_VQSR
plot-vcfstats chr01_1_JS_GATK_VQSR_noVQSR/JS_GATK_VQSR.vchk -p chr01_1_JS_GATK_VQSR_noVQSR/plot_JS_GATK_VQSR
plot-vcfstats chr01_1_JS_GATK_VQSR_noVQSR/MA_VQSR.vchk -p chr01_1_JS_GATK_VQSR_noVQSR/plot_MA_VQSR
plot-vcfstats chr01_1_JS_GATK_VQSR_noVQSR/JS_noVQSR.vchk -p chr01_1_JS_GATK_VQSR_noVQSR/plot_JS_noVQSR
plot-vcfstats chr01_1_JS_GATK_VQSR_noVQSR/MA_noVQSR.vchk -p chr01_1_JS_GATK_VQSR_noVQSR/plot_MA_noVQSR


