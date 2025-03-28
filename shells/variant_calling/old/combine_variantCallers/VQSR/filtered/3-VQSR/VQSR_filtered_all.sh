#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J VQSR_fil
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_filtered_filteredAll.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_filtered_filteredAll.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load gatk/4.0.1.2
module unload r/3.4.2
module load r/3.2.5
module load r-packages/default
module load Rcpp/0.12.14
R_LIBS_USER=/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c filtered_2plus_GATK_annot.vcf > filtered_2plus_GATK_annot.vcf.gz
# 
# /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk IndexFeatureFile \
# -F filtered_2plus_GATK_annot.vcf.gz

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk IndexFeatureFile \
-F truthSet/truth_GATK_variants.vcf

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk VariantRecalibrator \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V filtered_2plus_GATK_annot.vcf.gz \
--max-gaussians 4 \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
-mode SNP \
--resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:truthSet/truth_GATK_variants.vcf \
-O filtered_2plus_GATK.recal \
--tranches-file filtered_2plus_GATK.tranches \
--rscript-file filtered_2plus_GATK.plots.R
