#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J unfilb
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_unfiltered_allb.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_unfiltered_allb.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load gatk/4.0.1.2
# module unload r/3.4.2
# module load r/3.2.5
# module load r-packages/default
# module load Rcpp/0.12.14
# R_LIBS_USER=/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/


# /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk VariantRecalibrator \
# --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
# -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# -V unfiltered_2plus_GATK_annot.vcf.gz \
# -an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
# -mode SNP \
# --resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:../truthSet/truth_GATK_variants.vcf \
# -O G8_unfiltered_all.recal \
# --tranches-file G8_unfiltered_all.tranches \
# --rscript-file G8_unfiltered_all.plots.R

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk ApplyVQSR \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx128G" \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V unfiltered_2plus_GATK_annot.vcf.gz \
-O unfiltered_2plus_GATK_annot_VSQR90.vcf.gz \
-ts-filter-level 90.0 \
--tranches-file G8_unfiltered_all.tranches \
--recal-file G8_unfiltered_all.recal \
--exclude-filtered \
-mode SNP
  
  
/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk ApplyVQSR \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx128G" \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V unfiltered_2plus_GATK_annot.vcf.gz \
-O unfiltered_2plus_GATK_annot_VSQR99.vcf.gz \
-ts-filter-level 99.0 \
--tranches-file G8_unfiltered_all.tranches \
--recal-file G8_unfiltered_all.recal \
--exclude-filtered \
-mode SNP
  