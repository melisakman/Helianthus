#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr01_2
#SBATCH -J VSQchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix chr01_intersect.vcf.gz
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr01_intersect.vcf.gz \
   -o chr01_intersect_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V chr01_intersect.vcf.gz \
# 	-selectType SNP \
# 	-o chr01_intersect_SNP.vcf.gz 
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
# -T VariantRecalibrator \
# -nt 6 \
# -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# -input chr01_intersect_SNP.vcf.gz
# -an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an InbreedingCoeff \
# -mode SNP \
# -recalFile output.recal \
# -tranchesFile output.tranches \
# -rscriptFile output.plots.R