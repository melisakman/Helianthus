#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J filchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load gatk/4.0.1.2
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr01_filtered_2plus_GATK.vcf > chr01_filtered_2plus_GATK.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr01_filtered_2plus_GATK.vcf.gz  
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#    -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
#    -T VariantAnnotator \
#    -V chr01_filtered_2plus_GATK.vcf \
#    -o chr01_filtered_2plus_GATK_annot.vcf.gz \
#    -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
# -T VariantRecalibrator \
# -nt 20 \
# -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# -input chr01_filtered_2plus_GATK_annot.vcf.gz \
# -an QD -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
# -mode SNP \
# -resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 truthSet/chr01_truth_GATK_variants.vcf \
# -tranche 100.0 -tranche 99.9 -tranche 99.0 -tranche 90.0 \
# -recalFile filtered_chr01.recal \
# -tranchesFile filtered_chr01.tranches \
# -rscriptFile filtered_chr01.plots.R

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
VariantRecalibrator \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V chr01_filtered_2plus_GATK_annot.vcf.gz \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
-mode SNP \
-resource 3callerscombined,known=false,training=true,truth=true,prior=10.0:truthSet/chr01_truth_GATK_variants.vcf \
-tranche 100.0 -tranche 99.9 -tranche 99.0 -tranche 90.0 \
-recal-file filtered_chr01.recal \
-tranches-file filtered_chr01.tranches \
-rscriptFile filtered_chr01.plots.R
