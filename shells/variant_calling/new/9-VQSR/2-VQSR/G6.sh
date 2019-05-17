#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J G6
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQRG6_90.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQRG6_90.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6
module load gatk/4.0.1.2
module unload r/3.4.2
module load r/3.2.5
module load r-packages/default
module load Rcpp/0.12.14
R_LIBS_USER=/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/


# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# chr01_2plus_annot.vcf.gz \
# chr02_2plus_annot.vcf.gz \
# chr03_2plus_annot.vcf.gz \
# chr04_2plus_annot.vcf.gz \
# chr05_2plus_annot.vcf.gz \
# chr06_2plus_annot.vcf.gz \
# chr07_2plus_annot.vcf.gz \
# chr08_2plus_annot.vcf.gz \
# chr09_2plus_annot.vcf.gz \
# chr10_2plus_annot.vcf.gz \
# chr11_2plus_annot.vcf.gz \
# chr12_2plus_annot.vcf.gz \
# chr13_2plus_annot.vcf.gz \
# chr14_2plus_annot.vcf.gz \
# chr15_2plus_annot.vcf.gz \
# chr16_2plus_annot.vcf.gz \
# chr17_2plus_annot.vcf.gz > allChr_2plus_annot.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c allChr_2plus_annot.vcf > allChr_2plus_annot.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf allChr_2plus_annot.vcf.gz



# /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk IndexFeatureFile \
# --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
# -F truthSet/truth_GATK.vcf
# 


/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk VariantRecalibrator \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V allChr_2plus_annot.vcf.gz \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
--max-gaussians 6 \
-mode SNP \
--resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:truthSet/truth_GATK.vcf \
-O G6_unfiltered_all_tranches.recal \
-tranche 90 -tranche 80 -tranche 70 \
-tranche 99 -tranche 95 -tranche 92 -tranche 90 -tranche 80 -tranche 70 \
--rscript-file G6_unfiltered_all_tranches.plots.R
 
