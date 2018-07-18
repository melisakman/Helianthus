#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J filchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_unfiltered_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_unfiltered_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load gatk/4.0.1.2
module unload r/3.4.2
module load r/3.2.5
module load r-packages/default
module load Rcpp/0.12.14
R_LIBS_USER=/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/



/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk VariantRecalibrator \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V chr01_unfiltered_2plus_GATK_annot.vcf.gz \
--maxGaussians 4 \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
-mode SNP \
--resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:../truthSet/chr01_truth_GATK_variants.vcf \
-O unfiltered_chr01.recal \
--tranches-file unfiltered_chr01.tranches \
--rscript-file unfiltered_chr01.plots.R
