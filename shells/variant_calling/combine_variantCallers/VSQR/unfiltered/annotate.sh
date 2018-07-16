#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J ann_filt
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_annot_filt.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_annot_filt.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr01_filtered_2plus_GATK.vcf > chr01_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_filtered_2plus_GATK.vcf > chr02_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr03_filtered_2plus_GATK.vcf > chr03_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr04_filtered_2plus_GATK.vcf > chr04_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr05_filtered_2plus_GATK.vcf > chr05_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr06_filtered_2plus_GATK.vcf > chr06_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr07_filtered_2plus_GATK.vcf > chr07_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_filtered_2plus_GATK.vcf > chr08_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_filtered_2plus_GATK.vcf > chr09_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr10_filtered_2plus_GATK.vcf > chr10_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr11_filtered_2plus_GATK.vcf > chr11_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_filtered_2plus_GATK.vcf > chr12_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr13_filtered_2plus_GATK.vcf > chr13_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr14_filtered_2plus_GATK.vcf > chr14_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr15_filtered_2plus_GATK.vcf > chr15_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr16_filtered_2plus_GATK.vcf > chr16_filtered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr17_filtered_2plus_GATK.vcf > chr17_filtered_2plus_GATK.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr01_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr02_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr03_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr04_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr05_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr06_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr07_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr08_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr09_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr10_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr11_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr12_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr13_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr14_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr15_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr16_filtered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr17_filtered_2plus_GATK.vcf.gz  

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#    -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
#    -T VariantAnnotator \
#    -V chr01_filtered_2plus_GATK.vcf \
#    -o chr01_filtered_2plus_GATK_annot.vcf.gz \
#    -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr02_filtered_2plus_GATK.vcf \
   -o chr02_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr03_filtered_2plus_GATK.vcf \
   -o chr03_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr04_filtered_2plus_GATK.vcf \
   -o chr04_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr05_filtered_2plus_GATK.vcf \
   -o chr05_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr06_filtered_2plus_GATK.vcf \
   -o chr06_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr07_filtered_2plus_GATK.vcf \
   -o chr07_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr08_filtered_2plus_GATK.vcf \
   -o chr08_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr09_filtered_2plus_GATK.vcf \
   -o chr09_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr10_filtered_2plus_GATK.vcf \
   -o chr10_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr11_filtered_2plus_GATK.vcf \
   -o chr11_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr12_filtered_2plus_GATK.vcf \
   -o chr12_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr13_filtered_2plus_GATK.vcf \
   -o chr13_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr14_filtered_2plus_GATK.vcf \
   -o chr14_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr15_filtered_2plus_GATK.vcf \
   -o chr15_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr16_filtered_2plus_GATK.vcf \
   -o chr16_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr17_filtered_2plus_GATK.vcf \
   -o chr17_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

