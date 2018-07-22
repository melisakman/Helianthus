#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J unfilc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_unfiltered_allc.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_unfiltered_allc.err
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
-V unfiltered_2plus_GATK_annot.vcf.gz \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
-AS \
--max-gaussians 4 \
-mode SNP \
--resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:../truthSet/truth_GATK_variants.vcf \
-O AS_unfiltered_all.recal \
--tranches-file AS_unfiltered_all.tranches \
--rscript-file AS_unfiltered_all.plots.R

#node fail